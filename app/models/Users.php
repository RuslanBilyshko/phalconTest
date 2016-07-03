<?php

use Phalcon\Mvc\Model\Validator\Email as Email;

class Users extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $name;

    /**
     *
     * @var string
     */
    public $first_name;

    /**
     *
     * @var string
     */
    public $email;

    /**
     *
     * @var string
     */
    public $phone;

    /**
     *
     * @var integer
     */
    public $parent_id;

    /**
     *
     * @var integer
     */
    public $post_id;

    /**
     *
     * @var integer
     */
    public $dept_id;

    /**
     *
     * @var string
     */
    public $notes;

    public function initialize()
    {
        $this->hasOne("dept_id", "Departaments", "id");
        $this->hasOne("post_id", "Posts", "id");
    }

    public static function toSelect($dept_id,$id = 0)
    {
        $users = self::query()
          ->where("id <> ?1")
          ->andWhere("dept_id = ?2")
          ->bind([1 => $id, 2 => $dept_id])
          ->columns("id,name,first_name")
          ->order("id ASC")
          ->execute();

        $result[0] = 'Не указано';
        foreach($users as $user)
            $result[$user->id] = $user->id."-".$user->first_name." ".$user->name;

        return $result;
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Users[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Users
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'users';
    }

    public static function treeList()
    {
        $users = self::query()
          //->join("Departaments")
          //->columns("Users.id,name,first_name,Departaments.title,parent_id")
          ->columns("id,name,first_name,parent_id,dept_id")
          ->order("parent_id ASC")
          ->order("id ASC")
          ->execute();

        $result = [];
        foreach($users as $user)
        {
            if(empty($result[$user->parent_id]))
                $result[$user->parent_id] = [];

            $result[$user->parent_id][] = [
                'id' => $user->id,
                'name' => $user->name,
                'first_name' => $user->first_name,
                'parent_id' => $user->parent_id,
                'dept_id' => $user->dept_id,
            ];
        }


        return $result;
    }

    public static function getEmailList($id = 0)
    {
        $users = self::query()
          ->where("id <> ?1")
          ->bind([1 => $id])
          ->columns("email")
          ->execute();

        $result = [];
        foreach($users as $user)
            $result[] = $user->email;

        return $result;
    }

}

<?php

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text,
    Phalcon\Forms\Element\Textarea,
    Phalcon\Forms\Element\Select,
    Phalcon\Forms\Element\Password,
    Phalcon\Forms\Element\Submit,
    Phalcon\Forms\Element\Check,
    Phalcon\Forms\Element\Hidden,
    Phalcon\Forms\Element\Date;

use Phalcon\Validation\Validator\Identical;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\StringLength;
use Phalcon\Validation\Validator\ExclusionIn;

class UserForm extends Form
{
    /**
     * Этот метод возвращает значение по умолчанию для поля 'csrf'
     */
    public function getCsrf()
    {
        return $this->security->getSessionToken();
    }

    /**
     * Инициализация эллеметов формы
     * описание всех эллементов полей и кнопок
     */
    public function initialize(Users $user = null, $options = null)
    {
        // Установка сущности
        $this->setEntity($this);

        if($options['edit'])
        {
            //Id
            $id = new Hidden('id', array(
                'value' => $user->id,
            ));
            $this->add($id);
        }

      //Фамилия
      $first_name = new Text('first_name', array(
        'value' => $user ? $user->first_name : null,
      ));
      $first_name->addValidator(
        new PresenceOf(
          array(
            'message' => 'Поле Фамилия обязательно для заполнения'
          )
        )
      );
      $first_name->addValidator(
        new StringLength(
          array(
            'max' => 20,
            'min' => 3,
            'messageMaximum' => 'Поле Фамилия должно содеражать не более 20 символов ',
            'messageMinimum' => 'Поле Фамилия должно содеражать не менее 3 символов '
          )
        )
      );
      $first_name->setLabel('Фамилия:');
      $this->add($first_name);

      //Имя
      $name = new Text('name', array(
        'value' => $user ? $user->name : null,
      ));
      $name->addValidator(
        new PresenceOf(
          array(
            'message' => 'Поле Имя обязательно для заполнения'
          )
        )
      );
      $name->addValidator(
        new StringLength(
          array(
            'max' => 20,
            'min' => 3,
            'messageMaximum' => 'Поле Имя должно содеражать не более 20 символов ',
            'messageMinimum' => 'Поле Имя должно содеражать не менее 3 символов '
          )
        )
      );
      $name->setLabel('Имя:');
      $this->add($name);



      //$email
      $email = new Text('email', array(
        'value' => $user ? $user->email : null,
      ));
      $email->setLabel('Email:');
      $email->addValidator(
        new PresenceOf(
          array(
            'message' => 'Поле Email обязательно для заполнения'
          )
        )
      );
      $email->addValidator(
        new Email(
          array(
            'message' => 'Поле Email некоректно заполнено'
          )
        )
      );
      $email->addValidator(
        new ExclusionIn(
          array(
            'message' => 'Этот Email уже занят',
            'domain' => Users::getEmailList($user ? $user->id : 0)
          )
        )
      );
      $this->add($email);


      //$phone
      $phone = new Text('phone', array(
        'value' => $user ? $user->phone : null,
      ));
      $phone->setLabel('Телефон:');
      $phone->addValidator(
        new PresenceOf(
          array(
            'message' => 'Поле Телефон обязательно для заполнения'
          )
        )
      );
      $this->add($phone);

      //Departaments
      $dept = new Select('dept_id', Departaments::find(),[
        'using' => ['id','title'],
        'emptyText' => 'Не указано',
        'useEmpty' => true,
        'value' => $user ? $user->dept_id : NULL
      ]);
      $dept->setLabel('Отдел:');
      $dept->addValidator(
        new PresenceOf(
          array(
            'message' => 'Поле Отдел обязательно для заполнения'
          )
        )
      );
      $this->add($dept);

      //Post
      $post = new Select('post_id', Posts::find(),[
        'using' => ['id','title'],
        'emptyText' => 'Не указано',
        'useEmpty' => true,
        'value' => $user ? $user->post_id : NULL
      ]);
      $post->addValidator(
        new PresenceOf(
          array(
            'message' => 'Поле Должность обязательно для заполнения'
          )
        )
      );
      $post->setLabel('Должность:');
      $this->add($post);

      if($user)
      {
        //Parent
        $parent = new Select('parent_id',
          Users::toSelect($user->dept_id,$user->id),
          [
            'value' => $user->parent_id ? $user->parent_id : 0,
            'id' => 'combobox'
          ]);
        $parent->setLabel('Начальник:');
        $this->add($parent);
      }

      //$notes
      $notes = new Textarea('notes', array(
        'value' => $user ? $user->notes : null,
        'rows' => 5,
        'cols' => 40,
      ));
      $notes->setLabel('Заметки:');
      $this->add($notes);



    }
}
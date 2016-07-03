<?php

use Phalcon\Tag;

class UsersTreeView extends Tag
{
  public static function render($users, $parent_id = 0)
  {
    if(empty($users[$parent_id]))
      return;

    echo "<ul>";
      for($i = 0; $i < count($users[$parent_id]); $i++)
      {
        echo '<li>';
        echo Tag::linkTo('user/profile/'.$users[$parent_id][$i]['id'],
             $users[$parent_id][$i]['id']."-"
            .$users[$parent_id][$i]['name']." "
            .$users[$parent_id][$i]['name']." "
            .$users[$parent_id][$i]['dept_id']);
        self::render($users,$users[$parent_id][$i]['id']);
        echo '</li>';
      }
    echo "</ul>";
  }
}
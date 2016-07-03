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

class DeleteForm extends Form
{
    public function initialize($entity = null, $options = null)
    {
        $this->setEntity($this);

        //DELETE
        $submit = new Submit('delete', array(
            'value' => 'Удалить',
            'name' => 'delete',
        ));
        $this->add($submit);

        //Cancel
        $goToBack = new Submit('cancel', array(
            'value' => 'Отмена',
            'name' => 'cancel',
        ));
        $this->add($goToBack);
    }
}
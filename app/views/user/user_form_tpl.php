<form action="<?=$action?>" method="post">
    <? foreach ($form as $element):?>
        <p>
            <? if($element->getLabel()):?>
                <label for="<?= $element->getName() ?>"><?=$element->getLabel()?></label><br>
            <?endif?>
            <?=$element?>
        </p>
    <? endforeach ?>
  <input type="submit" name="save" value="Сохранить">
  <input type="submit" name="cancel" value="Отмена">
</form>



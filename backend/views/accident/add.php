<?php

$this->title = '添加';
use yii\bootstrap\ActiveForm;
?>
<style>
    .sort_inline div{
        float: left;
    }
    .cs_header {
        width: 100px;
    }
    .cs_second_header{

    }
    th,td{
        border: 1px solid #666666;
       }
</style>
<?php $form = ActiveForm::begin(['id' => 'accident','method'=>'post']); ?>
<table class="page">
    <tr>
        <th rowspan="2" class="cs_header">
            <?= $form->field($accident,'reasonA')->checkbox()?>
        </th>
        <td style="width: 100px" class="cs_second_header">
            <?= $form->field($accidentItem,'reasonA1')->checkbox()?>
        </td>
        <td class="sort_inline" class="cs_third_header">
            <?= $form->field($accidentA1,'reasonA101')->checkbox()?>
            <?= $form->field($accidentA1,'reasonA102')->checkbox()?>
            <?= $form->field($accidentA1,'reasonA103')->checkbox()?>
            <?= $form->field($accidentA1,'reasonA104')->checkbox()?>
            <?= $form->field($accidentA1,'reasonA105')->checkbox()?>
        </td>
    </tr>
    <tr>

        <td>
            <?= $form->field($accidentItem,'reasonA2')->checkbox()?>
        </td>
        <td class="sort_inline">
            <?= $form->field($accidentA2,'reasonA201')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA202')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA203')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA204')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA205')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA206')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA207')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA208')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA209')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA210')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA211')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA212')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA213')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA214')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA215')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA216')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA217')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA218')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA219')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA220')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA221')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA222')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA223')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA224')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA225')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA226')->checkbox()?>
            <?= $form->field($accidentA2,'reasonA227')->checkbox()?>
        </td>
    </tr>
    <tr>
        <th rowspan="2">
            <?= $form->field($accident,'reasonB')->checkbox()?>
        </th>
        <td>
            <?= $form->field($accidentItem,'reasonB1')->checkbox()?>
        </td>
        <td class="sort_inline">
            <?= $form->field($accidentB1,'reasonB101')->checkbox()?>
            <?= $form->field($accidentB1,'reasonB102')->checkbox()?>
            <?= $form->field($accidentB1,'reasonB103')->checkbox()?>
        </td>
    </tr>
    <tr>

        <td>
            <?= $form->field($accidentItem,'reasonB2')->checkbox()?>
        </td>
        <td class="sort_inline">
            <?= $form->field($accidentB2,'reasonB201')->checkbox()?>
            <?= $form->field($accidentB2,'reasonB202')->checkbox()?>
            <?= $form->field($accidentB2,'reasonB203')->checkbox()?>
            <?= $form->field($accidentB2,'reasonB204')->checkbox()?>
            <?= $form->field($accidentB2,'reasonB205')->checkbox()?>
            <?= $form->field($accidentB2,'reasonB206')->checkbox()?>
            <?= $form->field($accidentB2,'reasonB207')->checkbox()?>
        </td>
    </tr>

    <tr>
        <th rowspan="">
            <?= $form->field($accident,'reasonC')->checkbox()?>
        </th>
        <td>
            <?= $form->field($accidentItem,'reasonC1')->checkbox()?>
        </td>
        <td class="sort_inline">
            <?= $form->field($accidentC1,'reasonC101')->checkbox()?>
            <?= $form->field($accidentC1,'reasonC102')->checkbox()?>
            <?= $form->field($accidentC1,'reasonC103')->checkbox()?>
            <?= $form->field($accidentC1,'reasonC104')->checkbox()?>
            <?= $form->field($accidentC1,'reasonC105')->checkbox()?>
            <?= $form->field($accidentC1,'reasonC106')->checkbox()?>
            <?= $form->field($accidentC1,'reasonC107')->checkbox()?>
        </td>
    </tr>
    <tr>
        <th rowspan="2">
            <?= $form->field($accident,'reasonD')->checkbox()?>
        </th>
        <td>
            <?= $form->field($accidentItem,'reasonD1')->checkbox()?>
        </td>
        <td class="sort_inline">
            <?= $form->field($accidentD1,'reasonD101')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD102')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD103')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD104')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD105')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD106')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD107')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD108')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD109')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD110')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD111')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD112')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD113')->checkbox()?>
            <?= $form->field($accidentD1,'reasonD114')->checkbox()?>
        </td>
    </tr>
    <tr>
        <td>
            <?= $form->field($accidentItem,'reasonD2')->checkbox()?>
        </td>
        <td class="sort_inline">
            <?= $form->field($accidentD2,'reasonD201')->checkbox()?>
            <?= $form->field($accidentD2,'reasonD202')->checkbox()?>
            <?= $form->field($accidentD2,'reasonD203')->checkbox()?>
            <?= $form->field($accidentD2,'reasonD204')->checkbox()?>
            <?= $form->field($accidentD2,'reasonD205')->checkbox()?>
            <?= $form->field($accidentD2,'reasonD206')->checkbox()?>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <button type="submit" class="btn" style="width: 100px;height: 38px;background-color: #00aa00">
                保存
            </button>
        </td>
    </tr>
</table>



<?php $form->end()?>

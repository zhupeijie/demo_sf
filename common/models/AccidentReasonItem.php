<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_item".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonA1
 * @property integer $reasonA2
 * @property integer $reasonB1
 * @property integer $reasonB2
 * @property integer $reasonC1
 * @property integer $reasonD1
 * @property integer $reasonD2
 */
class AccidentReasonItem extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_item';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonA1', 'reasonA2', 'reasonB1', 'reasonB2', 'reasonC1', 'reasonD1', 'reasonD2'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ar_id' => 'Ar ID',
            'reasonA1' => '不安全动作',
            'reasonA2' => '不安全习惯',
            'reasonB1' => '物理性缺陷',
            'reasonB2' => '不安全物态',
            'reasonC1' => '作业环境不良,水文地质复杂,地下管线复杂',
            'reasonD1' => '安全管理体系缺欠',
            'reasonD2' => '安全文化缺欠',
        ];
    }
}

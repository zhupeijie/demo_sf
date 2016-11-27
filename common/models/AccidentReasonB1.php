<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_b1".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonB101
 * @property integer $reasonB102
 * @property integer $reasonB103
 */
class AccidentReasonB1 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_b1';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonB101', 'reasonB102', 'reasonB103'], 'integer'],
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
            'reasonB101' => '施工用具（机械、设备、设施、材料）的设计不合理',
            'reasonB102' => '质量不合格',
            'reasonB103' => '操作不方便',
        ];
    }
}

<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_d2".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonD201
 * @property integer $reasonD202
 * @property integer $reasonD203
 * @property integer $reasonD204
 * @property integer $reasonD205
 */
class AccidentReasonD2 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_d2';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonD201', 'reasonD202', 'reasonD203', 'reasonD204', 'reasonD205', 'reasonD206'], 'integer'],
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
            'reasonD201' => '安全承诺不到位',
            'reasonD202' => '行为规范与程序不完善',
            'reasonD203' => '安全行为激励不到位',
            'reasonD204' => '安全信息传播与沟通不顺畅',
            'reasonD205' => '自主学习与改进不到位',
            'reasonD206' => '安全事务参与不到位',
        ];
    }
}

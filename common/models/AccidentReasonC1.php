<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_c1".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonC101
 * @property integer $reasonC102
 * @property integer $reasonC103
 * @property integer $reasonC104
 * @property integer $reasonC105
 * @property integer $reasonC106
 * @property integer $reasonC107
 */
class AccidentReasonC1 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_c1';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonC101', 'reasonC102', 'reasonC103', 'reasonC104', 'reasonC105', 'reasonC106', 'reasonC107'], 'integer'],
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
            'reasonC101' => '现场作业面狭小',
            'reasonC102' => '现场布置不合理、不整洁',
            'reasonC103' => '软弱土层',
            'reasonC104' => '地下孔洞',
            'reasonC105' => '地下水渗透',
            'reasonC106' => '地下管线分布不明确',
            'reasonC107' => '地下管线老化、漏水漏气',
        ];
    }
}

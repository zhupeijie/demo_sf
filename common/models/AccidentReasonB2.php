<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_b2".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonB201
 * @property integer $reasonB202
 * @property integer $reasonB203
 * @property integer $reasonB204
 * @property integer $reasonB205
 * @property integer $reasonB206
 * @property integer $reasonB207
 */
class AccidentReasonB2 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_b2';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonB201', 'reasonB202', 'reasonB203', 'reasonB204', 'reasonB205', 'reasonB206', 'reasonB207'], 'integer'],
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
            'reasonB201' => '安全防护用品和设施缺失',
            'reasonB202' => '机械设备故障',
            'reasonB203' => '施工电线裸露',
            'reasonB204' => '明火（高温物质）',
            'reasonB205' => '支撑不牢',
            'reasonB206' => '围护结构失稳',
            'reasonB207' => '有毒气体',
        ];
    }
}

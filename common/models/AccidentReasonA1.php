<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_a1".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonA101
 * @property integer $reasonA102
 * @property integer $reasonA103
 * @property integer $reasonA104
 * @property integer $reasonA105
 */
class AccidentReasonA1 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_a1';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonA101', 'reasonA102', 'reasonA103', 'reasonA104', 'reasonA105'], 'integer'],
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
            'reasonA101' => '操作错误（误操作、违章作业）',
            'reasonA102' => '指挥错误（指挥失误、违章指挥）',
            'reasonA103' => '监控失误',
            'reasonA104' => '对环境安全的误判',
            'reasonA105' => '违反劳动纪律（脱岗）',
        ];
    }
}

<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason".
 *
 * @property string $id
 * @property integer $reasonA
 * @property integer $reasonB
 * @property integer $reasonC
 * @property integer $reasonD
 */
class AccidentReason extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['reasonA', 'reasonB', 'reasonC', 'reasonD'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'reasonA' => '人因缺陷',
            'reasonB' => '物因缺陷',
            'reasonC' => '环境缺陷',
            'reasonD' => '组织缺陷',
        ];
    }
}

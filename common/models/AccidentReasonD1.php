<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_d1".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonD101
 * @property integer $reasonD102
 * @property integer $reasonD103
 * @property integer $reasonD104
 * @property integer $reasonD105
 * @property integer $reasonD106
 * @property integer $reasonD107
 * @property integer $reasonD108
 * @property integer $reasonD109
 * @property integer $reasonD110
 * @property integer $reasonD111
 * @property integer $reasonD112
 * @property integer $reasonD113
 * @property integer $reasonD114
 */
class AccidentReasonD1 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_d1';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonD101', 'reasonD102', 'reasonD103', 'reasonD104', 'reasonD105', 'reasonD106', 'reasonD107', 'reasonD108', 'reasonD109', 'reasonD110', 'reasonD111', 'reasonD112', 'reasonD113', 'reasonD114'], 'integer'],
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
            'reasonD101' => '安全管理制度不健全',
            'reasonD102' => '安全操作规程不专业',
            'reasonD103' => '安全技术措施编制不严密',
            'reasonD104' => '安全应急措施不到位',
            'reasonD105' => '安全防护措施不到位',
            'reasonD106' => '劳动组织安排不合理',
            'reasonD107' => '安全监管不到位',
            'reasonD108' => '安全生产责任未落实',
            'reasonD109' => '现场安全管理松懈',
            'reasonD110' => '安全监测不到位',
            'reasonD111' => '安全检查不到位',
            'reasonD112' => '安全培训不到位',
            'reasonD113' => '安全信息沟通不顺畅',
            'reasonD114' => '未严格落实安全规程和标准',
        ];
    }
}

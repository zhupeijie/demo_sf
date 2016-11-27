<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "accident_reason_a2".
 *
 * @property string $id
 * @property string $ar_id
 * @property integer $reasonA201
 * @property integer $reasonA202
 * @property integer $reasonA203
 * @property integer $reasonA204
 * @property integer $reasonA205
 * @property integer $reasonA206
 * @property integer $reasonA207
 * @property integer $reasonA208
 * @property integer $reasonA209
 * @property integer $reasonA210
 * @property integer $reasonA211
 * @property integer $reasonA212
 * @property integer $reasonA213
 * @property integer $reasonA214
 * @property integer $reasonA215
 * @property integer $reasonA216
 * @property integer $reasonA217
 * @property integer $reasonA218
 * @property integer $reasonA219
 * @property integer $reasonA220
 * @property integer $reasonA221
 * @property integer $reasonA222
 * @property integer $reasonA223
 * @property integer $reasonA224
 * @property integer $reasonA225
 * @property integer $reasonA226
 * @property integer $reasonA227
 */
class AccidentReasonA2 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'accident_reason_a2';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ar_id'], 'required'],
            [['ar_id', 'reasonA201', 'reasonA202', 'reasonA203', 'reasonA204', 'reasonA205', 'reasonA206', 'reasonA207', 'reasonA208', 'reasonA209', 'reasonA210', 'reasonA211', 'reasonA212', 'reasonA213', 'reasonA214', 'reasonA215', 'reasonA216', 'reasonA217', 'reasonA218', 'reasonA219', 'reasonA220', 'reasonA221', 'reasonA222', 'reasonA223', 'reasonA224', 'reasonA225', 'reasonA226', 'reasonA227'], 'integer'],
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
            'reasonA201' => '安全知识了解太少',
            'reasonA202' => '安全知识理解和掌握不到位',
            'reasonA203' => '安全知识学习不认真',
            'reasonA204' => '对潜在的危险源不重视',
            'reasonA205' => '不能及时有效的消除危险源',
            'reasonA206' => '对安全隐患上报不及时',
            'reasonA207' => '安全责任感不强',
            'reasonA208' => '不重视安全法律法规',
            'reasonA209' => '不佩戴安全防护用品',
            'reasonA210' => '不按规范操作',
            'reasonA211' => '随手乱放料具',
            'reasonA212' => '不服从安排和管理',
            'reasonA213' => '安全感知不到位',
            'reasonA214' => '安全判断不准确',
            'reasonA215' => '安全反应不及时',
            'reasonA216' => '安全决策不到位',
            'reasonA217' => '不能承受工作压力',
            'reasonA218' => '安全技能不熟练',
            'reasonA219' => '安全自律不到位',
            'reasonA220' => '安全动机不纯',
            'reasonA221' => '安全情绪控制不到位',
            'reasonA222' => '个人性格特征缺陷',
            'reasonA223' => '心理易受环境的干扰',
            'reasonA224' => '身体健康状况不良',
            'reasonA225' => '体能不健全',
            'reasonA226' => '智力障碍',
            'reasonA227' => '感官不灵敏',
        ];
    }
}

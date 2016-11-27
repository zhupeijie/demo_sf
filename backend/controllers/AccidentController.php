<?php
namespace backend\controllers;


use common\models\AccidentReason;
use common\models\AccidentReasonA1;
use common\models\AccidentReasonA2;
use common\models\AccidentReasonB1;
use common\models\AccidentReasonB2;
use common\models\AccidentReasonC1;
use common\models\AccidentReasonD1;
use common\models\AccidentReasonD2;
use common\models\AccidentReasonItem;
use yii\base\Exception;
use yii\web\Controller;

class AccidentController extends Controller
{
    public function actionTest()
    {
        $this->layout = false;
        $accident = new AccidentReason();
        $accidentItem = new AccidentReasonItem();
        $accidentA1 = new AccidentReasonA1();
        $accidentA2 = new AccidentReasonA2();
        $accidentB1 = new AccidentReasonB1();
        $accidentB2 = new AccidentReasonB2();
        $accidentC1 = new AccidentReasonC1();
        $accidentD1 = new AccidentReasonD1();
        $accidentD2 = new AccidentReasonD2();
        if (\Yii::$app->request->isPost) {

//            return $this->redirect('/index.php/accident/test2');
            $post = \Yii::$app->request->post();
//            $transaction = \Yii::$app->getDb()->getTransaction();
//            print_r($transaction);die;
            try {
                $accident->load($post);
                if (!$accident->save()) {
                    throw new \Exception('保存基础信息失败');
                };
                $accidentItem->load($post);
                $accidentItem->ar_id = $accident->id;
                $accidentItem->validate();
                if (!$accidentItem->save()) {
                    throw new \Exception('保存明细信息失败');
                }
                $accidentA1->load($post);
                $accidentA1->ar_id = $accident->id;
                if (!$accidentA1->save()) {
                    throw new \Exception('保存失误原因A1失败');
                }
                $accidentA2->load($post);
                $accidentA2->ar_id = $accident->id;
                if (!$accidentA2->save()) {
                    throw new \Exception('保存失误原因A2失败');
                }
                $accidentB1->load($post);
                $accidentB1->ar_id = $accident->id;
                if (!$accidentB1->save()) {
                    throw new \Exception('保存失误原因B1失败');
                }
                $accidentB2->load($post);
                $accidentB2->ar_id = $accident->id;
                if (!$accidentB2->save()) {
                    throw new \Exception('保存失误原因B2失败');
                }
                $accidentC1->load($post);
                $accidentC1->ar_id = $accident->id;
                if (!$accidentC1->save()) {
                    throw new \Exception('保存失误原因C1失败');
                }
                $accidentD1->load($post);
                $accidentD1->ar_id = $accident->id;
                if (!$accidentD1->save()) {
                    throw new \Exception('保存失误原因D1失败');
                }
                $accidentD2->load($post);
                $accidentD2->ar_id = $accident->id;
                if (!$accidentD2->save()) {
                    throw new \Exception('保存失误原因D2失败');
                }
//                $transaction->commit();
                print_r('成功');
                die;
            } catch (\Exception $e) {
//                $transaction->rollBack();
                print_r($e->getMessage());
                die;
//                return $this->redirect('/index.php/accident/test2');
            }

        }
        return $this->render('add', [
            'accident' => $accident,
            'accidentItem' => $accidentItem,
            'accidentA1' => $accidentA1,
            'accidentA2' => $accidentA2,
            'accidentB1' => $accidentB1,
            'accidentB2' => $accidentB2,
            'accidentC1' => $accidentC1,
            'accidentD1' => $accidentD1,
            'accidentD2' => $accidentD2,
        ]);
    }

    public function actionTest2()
    {
        return $this->renderContent("上传成功");
    }

    public function actionIndex()
    {
        $this->layout = false;
        $sql = "select * from accident_reason AS A
                    LEFT JOIN accident_reason_item AS AI ON A.id=AI.ar_id 
                    LEFT JOIN accident_reason_a1 AS A1 ON A.id=A1.ar_id 
                    LEFT JOIN accident_reason_a2 AS A2 ON A.id=A2.ar_id 
                    LEFT JOIN accident_reason_b1 AS B1 ON A.id=B1.ar_id 
                    LEFT JOIN accident_reason_b2 AS B2 ON A.id=B2.ar_id 
                    LEFT JOIN accident_reason_c1 AS C1 ON A.id=C1.ar_id 
                    LEFT JOIN accident_reason_d1 AS D1 ON A.id=D1.ar_id 
                    LEFT JOIN accident_reason_d2 AS D2 ON A.id=D2.ar_id 
                  WHERE A.isDelete=0 limit 0,10";
        $db = \Yii::$app->getDb();
        $sql1 = "select A.id,
                        AI.reasonA1 as A1,AI.reasonA2 as A2,AI.reasonB1 as B1,AI.reasonB2 as B2,AI.reasonC1 as C1,
                        AI.reasonD1 as D1,AI.reasonD2 as D2,
                        A1.reasonA101 AS A101,A1.reasonA102 AS A102,A1.reasonA103 AS A103,A1.reasonA104 AS A104,A1.reasonA101 AS A105,
                        A2.reasonA201 AS A201,A2.reasonA202 AS A202,A2.reasonA203 AS A203,A2.reasonA204 AS A204,A2.reasonA201 AS A205,
                        A2.reasonA206 AS A206,A2.reasonA207 AS A207,A2.reasonA208 AS A208,A2.reasonA209 AS A209,A2.reasonA210 AS A210,
                        A2.reasonA211 AS A211,A2.reasonA212 AS A212,A2.reasonA213 AS A213,A2.reasonA214 AS A214,A2.reasonA215 AS A215,
                        A2.reasonA216 AS A216,A2.reasonA217 AS A217,A2.reasonA218 AS A218,A2.reasonA219 AS A219,A2.reasonA220 AS A220,
                        A2.reasonA221 AS A221,A2.reasonA222 AS A222,A2.reasonA223 AS A223,A2.reasonA224 AS A224,A2.reasonA225 AS A225,
                        A2.reasonA226 AS A226,A2.reasonA227 AS A227,
                        B1.reasonB101 AS B101,B1.reasonB102 AS B102,B1.reasonB103 AS B103,
                        B2.reasonB201 AS B201,B2.reasonB202 AS B202,B2.reasonB203 AS B203,B2.reasonB204 AS B204,B2.reasonB205 AS B205,
                        B2.reasonB206 AS B206,B2.reasonB207 AS B207,
                        C1.reasonC101 AS C101,C1.reasonC102 AS C102,C1.reasonC103 AS C103,C1.reasonC104 AS C104,C1.reasonC105 AS C105,
                        C1.reasonC106 AS C106,C1.reasonC107 AS C107,
                        D1.reasonD101 AS D101,D1.reasonD102 AS D102,D1.reasonD103 AS D103,D1.reasonD104 AS D104,D1.reasonD101 AS D105,
                        D1.reasonD106 AS D106,D1.reasonD107 AS D107,D1.reasonD108 AS D108,D1.reasonD109 AS D109,D1.reasonD110 AS D110,
                        D1.reasonD111 AS D111,D1.reasonD112 AS D112,D1.reasonD113 AS D113,D1.reasonD114 AS D114,
                        D2.reasonD201 AS D201,D2.reasonD202 AS D202,D2.reasonD203 AS D203,D2.reasonD204 AS D204,D2.reasonD205 AS D205,
                        D2.reasonD206 AS D206
                  from accident_reason AS A
                    LEFT JOIN accident_reason_item AS AI ON A.id=AI.ar_id 
                    LEFT JOIN accident_reason_a1 AS A1 ON A.id=A1.ar_id 
                    LEFT JOIN accident_reason_a2 AS A2 ON A.id=A2.ar_id 
                    LEFT JOIN accident_reason_b1 AS B1 ON A.id=B1.ar_id 
                    LEFT JOIN accident_reason_b2 AS B2 ON A.id=B2.ar_id 
                    LEFT JOIN accident_reason_c1 AS C1 ON A.id=C1.ar_id 
                    LEFT JOIN accident_reason_d1 AS D1 ON A.id=D1.ar_id 
                    LEFT JOIN accident_reason_d2 AS D2 ON A.id=D2.ar_id 
                  WHERE A.isDelete=0 limit 0,10";


        $lists = $db->createCommand($sql)->queryAll();
        return $this->render('index', ['lists' => $lists]);
        print_r($list);
    }
}
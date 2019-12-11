<?php
namespace app\controllers;
use Yii;


use yii\rest\ActiveController;
use app\models\User;
/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends ActiveController
{
     // We are using the regular web app modules:
   public $modelClass = 'app\models\User';
    
    public function actionLogin()
    {
        Yii::$app->response->format = \yii\web\Response:: FORMAT_JSON;
        $post = Yii::$app->request->post();
        if (empty($post["username"])) {
            $respose = array('status'=>400, 'field'=>"username", "message"=>"Username cannot be blank.");
            return $respose;
        }

        if (empty($post["password"])) {
            $respose = array('status'=>400, 'field'=>"password", "message"=>"Password cannot be blank.");
            return $respose;
        }
        $model = User::findOne(["username" => $post["username"]]);
        if (empty($model)) {
            return array('status'=>400,'data'=>[], 'message'=>'incorrect username');
        }
        if ($model->validatePassword($post["password"])) {
            $model->last_login = Yii::$app->formatter->asTimestamp(date_create());
            $model->save(false);
            return array('status'=>200,'data'=>$model, 'message'=>'Login successful');
            
        } else {
            return array('status'=>400,'data'=>[], 'message'=>'Incorrect password');
           
        }
    }

}

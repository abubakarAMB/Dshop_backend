<?php

namespace app\controllers;
use yii\rest\ActiveController;
use app\models\User;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBasicAuth;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\auth\QueryParamAuth;
use yii\helpers\ArrayHelper;

class ServicesController extends ActiveController
{
     // We are using the regular web app modules:
     public $modelClass = 'app\models\Services';
     public function behaviors(){
    return ArrayHelper::merge(
        parent::behaviors(), [
            'authenticator' => [
                'class' => CompositeAuth::className(),
                'except' => ['view'],
                'authMethods' => [
                    HttpBasicAuth::className(),
                    HttpBearerAuth::className(),
                    QueryParamAuth::className(),
                ],
            ],
        ]
    );
    }
}

from django.shortcuts import render, redirect
import pandas as pd
import warnings
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier  
from sklearn.metrics import accuracy_score,f1_score, recall_score, precision_score, auc, roc_auc_score, roc_curve
# from sklearn.metrics import accuracy_score

def algo(self):
    df=pd.read_csv('heart_clean.csv')
    X=df.drop(columns='HeartDisease')
    Y=df['HeartDisease']

    x_train,x_test,y_train,y_test=train_test_split(X,Y,random_state=42,test_size=0.2)



    rfc=RandomForestClassifier(random_state=42)
    rfc.fit(x_train,y_train)

    # prediction
    test_prediction= rfc.predict(x_test)

    # evaluation
    print('Accuracy:',accuracy_score(y_test,test_prediction)*100)
    print('Precision:',precision_score(test_prediction,y_test,average = 'macro')*100)
    print('Recall:',recall_score(test_prediction,y_test,average = 'macro')*100)
    print('F1_score:',f1_score(test_prediction,y_test,average = 'macro')*100)

    return redirect("randomforestalgo")

package com.fierrastudios.demoapp;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity
{
    public void exchangeFunction(View view)
    {
        EditText amount = (EditText) findViewById(R.id.amount);
        Double amountDouble = Double.parseDouble(amount.getText().toString());
        Double yenAmount = amountDouble * 110.18;
        Toast.makeText(MainActivity.this, "Yen: " + String.format("%.2f", yenAmount), Toast.LENGTH_SHORT).show();
        Log.i("USD -> YEN", String.format("%.2f", yenAmount));
    }
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
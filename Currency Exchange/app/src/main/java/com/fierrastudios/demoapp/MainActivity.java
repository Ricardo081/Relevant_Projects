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
//    This is to log button press
//    public void clickFunction(View view)
//    {
//        Log.i("Info","Button Pressed!");
//    }

//    This is to log user input from textfield
//    public void clickFunction(View view)
//    {
//        EditText user = (EditText) findViewById(R.id.user);
//        Log.i("Info", user.getText().toString());
//    }

//    Make toast
//    public void clickFunction(View view)
//    {
//////        Toast.makeText(this, "Hi, there!", Toast.LENGTH_SHORT).show();
//        EditText user = (EditText) findViewById(R.id.user);
//        Log.i("Info", user.getText().toString());
//        Toast.makeText(this, "Hi there, " +  user.getText().toString() + "!", Toast.LENGTH_SHORT).show();
//    }

//    Change picture through button press
//    public void pokeFunction (View view)
//    {
//        ImageView image = (ImageView) findViewById(R.id.pokeball);//pokeball is the images id
//        image.setImageResource(R.drawable.pichu);
//        Log.i("Test", "Success!!");
//    }

//    Currency Coverter
    public void exchangeFunction(View view)
    {
        EditText amount = (EditText) findViewById(R.id.amount);
        Double amountDouble = Double.parseDouble(amount.getText().toString());
        Double yenAmount = amountDouble * 103.80;
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
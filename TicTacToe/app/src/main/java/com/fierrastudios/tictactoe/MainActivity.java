package com.fierrastudios.tictactoe;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity
{
    int currentPlayer = 0;//0: X, 1: O
    int[] game = {2,2,2,2,2,2,2,2,2};//slot open
    int[][] winningPositions = {{0,1,2}, {3,4,5}, {6,7,8}, {0,3,6}, {1,4,7}, {2,5,8}, {0,4,8}, {2,4,6}};
    public void hereFunction(View view)
    {
        ImageView counter = (ImageView) view;

        int tappedCounter = Integer.parseInt(counter.getTag().toString());
        if (game[tappedCounter] == 2)
        {
            game[tappedCounter] = currentPlayer;
            counter.setTranslationY(-1000f);
            if (currentPlayer == 0)
            {
                counter.setImageResource(R.drawable.x);
                currentPlayer = 1;
            }
            else
            {
                counter.setImageResource(R.drawable.o);
                currentPlayer = 0;
            }
            counter.animate().translationYBy(1000f).rotation(360).setDuration(300);
            for (int[] winningPosition : winningPositions)
            {
                if (game[winningPosition[0]] == game[winningPosition[1]] && game[winningPosition[1]] == game[winningPosition[2]] && game[winningPosition[0]] != 2)
                {
                    System.out.println(game[winningPosition[0]]);
                }
            }
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
import java.util.*;
import java.io.*;//used for files: read .txt

public class lotto
{
    static class TexasLotto//use static to remove error, means class inside another class
    {
        ArrayList <Integer> lottoNumAL = new ArrayList<Integer>();
        String lottoName;
        int pickLimit, limit, extraLimit;
        public void arrange(ArrayList <Integer> lottoNumAL)
            {
                int a = 1;
                for (int b = 0; b < a; b++)
                {
                    for (int i = 0; i < (lottoNumAL.size()-1); i++)
                    {
                        for (int ii = i + 1; ii < lottoNumAL.size(); ii++)
                        {
                            if (lottoNumAL.get(i) > lottoNumAL.get(ii))
                            {
                                int c = lottoNumAL.get(i);
                                lottoNumAL.remove(i);
                                lottoNumAL.add(c);
                                a = a + 1;
                            }
                        }
                    }
                }
            }
        public void LuckyNums(int pickLimit, int limit, int extraLimit, ArrayList <Integer> lottoNumAL)
            {
                Scanner input = new Scanner(System.in);
                int numAns;
                for (int i = 0; i < pickLimit; i++)
                {
                    System.out.print("[" + (i+1) + "]: ");
                    numAns = input.nextInt();
                    if (numAns > limit || numAns < 0)
                    {
                        i = i - 1;//repeat loop
                    }
                    else
                    {
                        lottoNumAL.add(numAns);
                    }
                }
                System.out.println("Complete!");
            }
        public void historic(ArrayList<Integer> lottoNumAL)
        {
            System.out.println("Successful!");
            System.out.print("> ");
            System.out.print("Records: ");
            int num1, num2, num3, num4, num5, powerball;
            int hit = 0;
            int lineNum = 1;
            ArrayList <Integer> dbtemp = new ArrayList<Integer>();
            ArrayList <Integer> jackpot = new ArrayList<Integer>();
            boolean won = false;
            BufferedReader reader;
            try
            {
                reader = new BufferedReader (new FileReader("powerball_db.txt"));
                Scanner s = new Scanner(reader);
                String line = reader.readLine();
                while(line != null)
                {
                    hit = 0;
                    lineNum = lineNum + 1;
                    num1 = s.nextInt();
                    num2 = s.nextInt();
                    num3 = s.nextInt();
                    num4 = s.nextInt();
                    num5 = s.nextInt();
                    powerball = s.nextInt();
                    dbtemp.add(num1);
                    dbtemp.add(num2);
                    dbtemp.add(num3);
                    dbtemp.add(num4);
                    dbtemp.add(num5);
                    arrange(dbtemp);
                    //System.out.println(line);
                    //line = reader.readLine();
                    for (int i = 0; i < dbtemp.size(); i++)
                    {
                        if (dbtemp.get(i) == lottoNumAL.get(i))
                        {
                            hit = hit + 1;
                            if (hit == 5)
                            {
                                won = true;
                                for(int a = 0; a < dbtemp.size(); a++)
                                {
                                    jackpot.add(dbtemp.get(a));
                                }
                                System.out.println("Jackpot!");
                                System.out.println("[" + lineNum + "]");
                                System.out.print("Numbers: ");
                                System.out.println(dbtemp);
                                System.out.print("Powerball: " + powerball);
                                break;
                            }
                        }
                    }
                    dbtemp.clear();
                    if (won == true)
                    {
                        break;
                    }
                    if (lineNum == 1129)
                    {
                        System.out.println("N/A");
                    }
                }
                reader.close();
            }
            catch (IOException e) 
            {
                e.printStackTrace();
            }
        }
        public void counter(ArrayList<Integer> dbtemp)
        {
            
        }
    }
    public static void main(String[] args)
    {
        Scanner input = new Scanner(System.in);
        String ans;
        int numAns;
        System.out.println("- L O T T O  T E X A S -");
        System.out.println("a) P o w e r B a l l ");
        System.out.print("Selection: ");
        ans = input.next();
        if (ans.equals("a") || ans.equals("A"))
        {
            TexasLotto powerball_lotto = new TexasLotto();
            powerball_lotto.lottoName = "Powerball";
            powerball_lotto.pickLimit = 5;
            powerball_lotto.limit = 69;
            powerball_lotto.extraLimit = 26;
            powerball_lotto.LuckyNums(powerball_lotto.pickLimit,powerball_lotto.limit,powerball_lotto.extraLimit,powerball_lotto.lottoNumAL);
            powerball_lotto.arrange(powerball_lotto.lottoNumAL);
            //System.out.print(powerball_lotto.lottoNumAL);
            powerball_lotto.historic(powerball_lotto.lottoNumAL);
        }
    }
}
// import java.util.*;
// import java.io.*;//used for files: read .txt

// public class lotto//has to be named same as file
// {
//     static class TexasLotto//use static to remove error, means class inside another class
//     {
//         ArrayList <Integer> lottoNumAL = new ArrayList<Integer>();
//         String lottoName;
//         int pickLimit, limit, extraLimit;
//         public void arrange(ArrayList <Integer> lottoNumAL)
//             {
//                 int a = 1;
//                 for (int b = 0; b < a; b++)
//                 {
//                     for (int i = 0; i < (lottoNumAL.size()-1); i++)
//                     {
//                         for (int ii = i + 1; ii < lottoNumAL.size(); ii++)
//                         {
//                             if (lottoNumAL.get(i) > lottoNumAL.get(ii))
//                             {
//                                 int c = lottoNumAL.get(i);
//                                 lottoNumAL.remove(i);
//                                 lottoNumAL.add(c);
//                                 a = a + 1;
//                             }
//                         }
//                     }
//                 }
//             }
//         public void LuckyNums(int pickLimit, int limit, int extraLimit, ArrayList <Integer> lottoNumAL)
//             {
//                 Scanner input = new Scanner(System.in);
//                 int numAns;
//                 for (int i = 0; i < pickLimit; i++)
//                 {
//                     System.out.print("[" + (i+1) + "]: ");
//                     numAns = input.nextInt();
//                     if (numAns > limit || numAns < 0)
//                     {
//                         i = i - 1;//repeat loop
//                     }
//                     else
//                     {
//                         lottoNumAL.add(numAns);
//                     }
//                 }
//                 System.out.println("Complete!");
//             }
//         public void historic(ArrayList<Integer> lottoNumAL)
//         {
//             System.out.println("Successful!");
//             System.out.print("> ");
//             System.out.print("Records: ");
//             int num1, num2, num3, num4, num5, powerball;
//             int hit = 0;
//             int lineNum = 1;
//             ArrayList <Integer> dbtemp = new ArrayList<Integer>();
//             ArrayList <Integer> jackpot = new ArrayList<Integer>();
//             boolean won = false;
//             BufferedReader reader;
//             try
//             {
//                 reader = new BufferedReader (new FileReader("powerball_db.txt"));
//                 Scanner s = new Scanner(reader);
//                 String line = reader.readLine();
//                 while(line != null)
//                 {
//                     hit = 0;
//                     lineNum = lineNum + 1;
//                     num1 = s.nextInt();
//                     num2 = s.nextInt();
//                     num3 = s.nextInt();
//                     num4 = s.nextInt();
//                     num5 = s.nextInt();
//                     powerball = s.nextInt();
//                     dbtemp.add(num1);
//                     dbtemp.add(num2);
//                     dbtemp.add(num3);
//                     dbtemp.add(num4);
//                     dbtemp.add(num5);
//                     arrange(dbtemp);
//                     //System.out.println(line);
//                     //line = reader.readLine();
//                     for (int i = 0; i < dbtemp.size(); i++)
//                     {
//                         if (dbtemp.get(i) == lottoNumAL.get(i))
//                         {
//                             hit = hit + 1;
//                             if (hit == 5)
//                             {
//                                 won = true;
//                                 for(int a = 0; a < dbtemp.size(); a++)
//                                 {
//                                     jackpot.add(dbtemp.get(a));
//                                 }
//                                 System.out.println("Jackpot!");
//                                 System.out.println("[" + lineNum + "]");
//                                 System.out.print("Numbers: ");
//                                 System.out.println(dbtemp);
//                                 System.out.print("Powerball: " + powerball);
//                                 break;
//                             }
//                         }
//                     }
//                     dbtemp.clear();
//                     if (won == true)
//                     {
//                         break;
//                     }
//                     if (lineNum == 1129)
//                     {
//                         System.out.println("N/A");
//                     }
//                 }
//                 reader.close();
//             }
//             catch (IOException e) 
//             {
//                 e.printStackTrace();
//             }
//         }
//     }
//     public static void main(String[] args)
//     {
//         Scanner input = new Scanner(System.in);
//         String ans;
//         int numAns;
//         System.out.println("- L O T T O  T E X A S -");
//         System.out.println("a) P o w e r B a l l ");
//         System.out.print("Selection: ");
//         ans = input.next();
//         if (ans.equals("a") || ans.equals("A"))
//         {
//             TexasLotto powerball_lotto = new TexasLotto();
//             powerball_lotto.lottoName = "Powerball";
//             powerball_lotto.pickLimit = 5;
//             powerball_lotto.limit = 69;
//             powerball_lotto.extraLimit = 26;
//             powerball_lotto.LuckyNums(powerball_lotto.pickLimit,powerball_lotto.limit,powerball_lotto.extraLimit,powerball_lotto.lottoNumAL);
//             powerball_lotto.arrange(powerball_lotto.lottoNumAL);
//             //System.out.print(powerball_lotto.lottoNumAL);
//             powerball_lotto.historic(powerball_lotto.lottoNumAL);
//         }
//     }
// }
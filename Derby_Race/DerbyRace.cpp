#include<iostream>
#include<time.h>
#include<string>
#include<vector>
#include<iomanip>
using namespace std;

class horse
{
private:
	string name;
	string abbre;//abbreviation
	int w, l;//wins,inses
	int total;//total games played
	int num;//used to compare to players horse decision imput

public:
	int out, in;//out | in
	int FWL;//final win|loss, start all horses set to zero make to 1 if horse wins
	int position;
	int placement;//Ending Positions (133 is the finish line)
	int tempPlacement;//initial setw(19)

	horse()//constructor
	{

	}
	void aplyName(string a)
	{
		name = a;
	}
	string getName()
	{
		return name;
	}
	void aplyNum(int a)
	{
		num = a;
	}
	int getNum()
	{
		return num;
	}
	void aplyAbre(string a)
	{
		abbre = a;
	}
	string getabbr()
	{
		return abbre;
	}
	unsigned int randWins()

	{
		w = (rand() % 99) + 1;//Random number to determine Wins
		return w;
	}

	unsigned int randLosses()
	{
		l = (rand() % 99) + 1;//Random number to determine losses
		return l;
	}
	int totalraces(int a, int b)
	{
		total = a + b;
		return total;
	}
	int randMovement()
	{
		return rand() % 5;//movement of horse
	}
};

class player
{
private:
	string playerName;
	int playernum;
	int choice;//horse
	double bid;
	int pID;//player ID
public:
	player()//constructor
	{

	}
	void aplyPlayer(string a)
	{
		playerName = a;
	}
	void option(int a)
	{
		choice = a;
	}
	int getChoice()
	{
		return choice;
	}
	void bidAmount(double a)
	{
		bid = a;
	}
	double getBiDAm()
	{
		return bid;
	}
	void plyerId(int a)
	{
		pID = a;
	}
	int getplyerID()
	{
		return pID;
	}
};

class randBidders
{
private:
	int biddernums;
	int rbid;//random bids for random players up to $100
	int rhorse;//rplayers get assigned random horse
	int rpID;//rplayer ID starts with A2018HRRB
public:
	randBidders()//constructor
	{

	}

	void randBidder()
	{
		biddernums = rand() % 30;// Determines Number of Bidders Participating | "Bidders Participating : "
	}

	int bidnums()
	{
		return biddernums;
	}

	unsigned int randBiddersBid()
	{
		rbid = (rand() % 100) + 1;// every odds bidder can bid up to $100
		return rbid;
	}

	void idgen(int a)
	{
		rpID = a;
	}

	int getID()
	{
		return rpID;
	}

	void randHorsePick()
	{
		rhorse = rand() % 11;//rplayers get assigned a random hors from 10
	}

	int getrhorse()
	{
		return rhorse;
	}
};

int randTrack()

{
	return rand() % 3;//track (from 3 types)[0,1,2]
}

int main()
{
	srand(time(NULL));// Makes it completely random. 
	int numPlayers;
	int t = randTrack();
	string track[3] = { "Dirt", "Sythetic", "Turf" };
	string trackDesignStart[3] =

	{ "                       [START]....................................................................................................[END]\n", "                       [START]----------------------------------------------------------------------------------------------------[END]\n", "                       [START],,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,[END]\n" };

	string trackDesignBottom[3] =

	{ "                       .|.........................................................................................................|.....\n","                       -|--------------------------------------------------------------------------------------------------------|-----\n","                       ,|,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,|,,,,,\n"

	};
	randBidders initializor;
	initializor.randBidder();
	int rbID = 0;//******random bidder ID starts with A2018HRRB
	vector<randBidders>randBidder(initializor.bidnums());  //random set of players
	for (int i = 0; i < initializor.bidnums(); i++)
	{
		initializor.randBiddersBid();
		randBidder[i].idgen(rbID);//every bidder gets an ID = A2018HRP0[i]
		randBidder[i].randBiddersBid(); //rplayers get random bid
		randBidder[i].randHorsePick();//player gets assigned random horse
		rbID = rbID + 1;
	}

	//Horses
	//Data Storage for horses
	vector<horse>horse1(10);//10 horses
	int hin;
	int hout;
	int a = 1;
	for (int i = 0; i < 10; i++)
	{
		double hw = horse1[i].randWins();
		double hl = horse1[i].randLosses();
		double ht = hw + hl;

		if ((hw / ht) >= .80)
		{
			hin = 2;
			hout = 1;
		}
		else if ((hw / ht < .80) && (hw / ht >= .65))
		{
			hin = 3;
			hout = 1;
		}
		else if (((hw / ht) < .65) && ((hw / ht) >= .50))
		{
			hin = 4;
			hout = 1;
		}
		else if (((hw / ht) < .50) && ((hw / ht) >= .10))
		{
			hin = 8;
			hout = 1;
		}
		else if ((hw / ht) < .10)
		{
			hin = 12;
			hout = 1;
		}

		//aplyout and in lines 344 346
		horse1[i].randWins();
		horse1[i].randLosses();
		horse1[i].out = hin;
		horse1[i].in = hout;
		horse1[i].tempPlacement = 19;
		horse1[i].totalraces(hw, hl);
		horse1[i].aplyNum(a);//used to compare to players horse decision imput
		horse1[i].FWL = 0;// turn to 1 if wins
		a = a + 1;
	}

	horse1[0].aplyName("Stella");
	horse1[0].aplyAbre("STL");
	horse1[1].aplyName("Sea Biscuits");
	horse1[1].aplyAbre("SEB");
	horse1[2].aplyName("Baskets");
	horse1[2].aplyAbre("BKS");
	horse1[3].aplyName("Charles");
	horse1[3].aplyAbre("CHL");
	horse1[4].aplyName("Lincoln");
	horse1[4].aplyAbre("LIN");
	horse1[5].aplyName("Trigger");
	horse1[5].aplyAbre("TGR");
	horse1[6].aplyName("Steffan");
	horse1[6].aplyAbre("STF");
	horse1[7].aplyName("Jakes");
	horse1[7].aplyAbre("JKS");
	horse1[8].aplyName("Jinkies");
	horse1[8].aplyAbre("JNK");
	horse1[9].aplyName("Long Face");
	horse1[9].aplyAbre("LNF");

	////////////
	cout << endl;
	cout << "****Fit Terminal to Full Screen****\n";
	cout << endl;
	cout << "************************************* Horse Race Simulator *****************************************\n";
	cout << "                                             HORSES\n";
	cout << "         Track : " << track[t] << endl;
	cout << "         **********************************************************************************\n";
	cout << "         *       NAME                  WINS-LOSSES            PLAYED                ODDS  *\n";
	cout << "         *                                                                                *" << endl;
	
	for (int i = 0; i < 10; i++)
	{
		cout << "         *  (" << setw(2) << right << horse1[i].getNum() << " | " << horse1[i].getabbr() << ") " << setw(17) << left << horse1[i].getName() << setw(2) << left << horse1[i].randWins() << " - "

			<< setw(3) << left << horse1[i].randLosses() << setw(17) << right << horse1[i].totalraces(horse1[i].randWins(), horse1[i].randLosses()) << setw(18) << right << horse1[i].out << " - " << setw(2) << left << horse1[i].in << setw(4) << right << " *\n";
	}

	cout << "         **********************************************************************************\n";
	cout << "Bidders Participating : " << initializor.bidnums() << endl;
	cout << "Enter Number of Players Participating : ";
	cin >> numPlayers;
	vector<player>player(numPlayers);
	cout << endl;

	int pcodes = 1;
	for (int i = 0; i < numPlayers; i++)
	{
		system("cls");
		cout << endl;
		cout << "****Fit Terminal to Full Screen****\n";
		cout << endl;
		cout << "************************************* Horse Race Simulator *****************************************\n";
		cout << "                                             HORSES\n";
		cout << "         Track : " << track[t] << endl;
		cout << "         **********************************************************************************\n";
		cout << "         *       NAME                  WINS-LOSSES            PLAYED                ODDS  *\n";
		cout << "         *                                                                                *" << endl;

		for (int i = 0; i < 10; i++)
		{
			cout << "         *  (" << setw(2) << right << horse1[i].getNum() << " | " << horse1[i].getabbr() << ") " << setw(17) << left << horse1[i].getName() << setw(2) << left << horse1[i].randWins() << " - "
				<< setw(3) << left << horse1[i].randLosses() << setw(17) << right << horse1[i].totalraces(horse1[i].randWins(), horse1[i].randLosses()) << setw(18) << right << horse1[i].out << " - " << setw(2) << left << horse1[i].in << setw(4) << right << " *\n";
		}

		cout << "         **********************************************************************************\n";
		cout << "Bidders Participating : " << initializor.bidnums() << endl;
		cout << "Number of Players : " << numPlayers << endl;
		cout << endl;
		cout << "Player " << i + 1 << " (Enter First Name) : ";
		string namme;
		cin >> namme;

		player[i].aplyPlayer(namme);
		cout << "Horse # : ";
		int hrsenum;
		cin >> hrsenum;
		player[i].option(hrsenum);
		if (player[i].getChoice() > 10)
		{
			while (player[i].getChoice() > 10)
			{
				cout << "> Make sure to enter the number of the horses in the race\n";
				cout << "Horse # : ";
				cin >> hrsenum;
				player[i].option(hrsenum);
			}
		}
		cout << "Bid : $";
		double moneyamount;
		cin >> moneyamount;
		player[i].bidAmount(moneyamount);
		cout << "Your Player ID : (A2018HRP0" << pcodes << ")" << endl;
		player[i].plyerId(pcodes);
		pcodes = pcodes + 1;
		cout << endl;
		system("pause");
		//cin.ignore();
		system("cls");

		cout << endl;
	}

	//Laps
	//Initial
	system("cls");
	cout << "  ///////////////////////////////\n";
	cout << " //   Horse Race Simulation   //\n";
	cout << "///////////////////////////////\n";
	cout << endl;
	cout << trackDesignStart[t];

	for (int i = 0; i < 10; i++)
	{
		cout << "(" << horse1[i].getabbr() << ") " << setw(17) << left << horse1[i].getName() << ">" << setw(2) << left << "|\n";
		cout << trackDesignBottom[t];
	}
	system("pause");

	//Next(Movement)
	int z = 0;
	int d = 0;
	{
		int end = 1000;//simple  number to run inop
		for (int ii = 0; ii < end; ii++)
		{
			system("cls");
			cout << "  ///////////////////////////////\n";
			cout << " //   Horse Race Simulation   //\n";
			cout << "///////////////////////////////\n";
			cout << endl;
			cout << trackDesignStart[t];

			for (int iz = 0; iz < 1; iz++)
			{
				for (int i = 0; i < 10; i++)
				{
					if (horse1[i].tempPlacement >= 133)////////////helps break racing loop
					{
						horse1[i].FWL = 1;
						z = 1;
						break;
					}
					cout << "(" << horse1[i].getabbr() << ") " << setw(horse1[i].tempPlacement) << left << horse1[i].getName() << ">\n";
					horse1[i].position = horse1[i].tempPlacement;
					horse1[i].tempPlacement = horse1[i].position + horse1[i].randMovement();
					if (horse1[i].tempPlacement >= 133)////////////helps break racing loop
					{
						horse1[i].FWL = 1;
						z = 1;
					}
					if (horse1[i].out == 4)
					{
						horse1[i].tempPlacement = horse1[i].tempPlacement + 1;
					}
					else if ((horse1[i].out == 3) || (horse1[i].out == 2))
					{
						horse1[i].tempPlacement = horse1[i].tempPlacement + 1;
					}
					if (horse1[i].tempPlacement >= 133)////////////helps break racing loop
					{
						horse1[i].FWL = 1;
						z = 1;
					}
					cout << trackDesignBottom[t];
				}
				if (z == 1)
				{
					break;
				}
			}
			for (int i = 0; i < 10; i++)//outside to check for 1 placement
			{
				if (horse1[i].FWL == 1)
				{
					d = 1;
					cout << endl;
					cout << endl;
					cout << "                                        /////////////////////////////////////////////////////////\n";
					cout << "                                                                                               \n";
					cout << "                                                          WINNER : (" << horse1[i].getabbr() << ") " << horse1[i].getName() << endl;
					cout << "                                                                                               \n";
					cout << "                                        /////////////////////////////////////////////////////////\n";
					cout << endl;
					cout << "                                                           PLAYER IDs & WINNINGS\n";
					cout << "                                                          -----------------------\n";
					cout << endl;

					for (int iii = 0; iii < numPlayers; iii++)//Players and their IDs
					{
						if (player[iii].getChoice() == horse1[i].getNum())
						{
							cout << "                                        " << "A2018HRP0" << player[iii].getplyerID() << " : $" << (player[iii].getBiDAm() * horse1[i].out) << setprecision(2) << endl;
							cout << endl;
						}
						else
						{
							cout << "                                        " << "A2018HRP0" << player[iii].getplyerID() << " : $0.00" << endl;
							cout << endl;
						}
					}

					for (int ii = 0; ii < initializor.bidnums(); ii++)//random players and their IDs = A2018HRRB[ii]
					{
						if (randBidder[ii].getrhorse() == horse1[i].getNum())
						{
							cout << "                                        " << "R2018HRRB" << randBidder[ii].getID() << " : $" << (randBidder[i].randBiddersBid() * horse1[i].out) << ".00" << endl;
							cout << endl;
						}
						else
						{
							cout << "                                        " << "R2018HRRB" << randBidder[ii].getID() << " : $0.00" << endl;
							cout << endl;
						}
					}
				}
				if (d == 1)
				{
					break;
				}
			}
			if (z == 1)
			{
				break;
			}
		}
	}
	//system("pause");

}
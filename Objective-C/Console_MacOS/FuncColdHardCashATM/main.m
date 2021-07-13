//
//  main.m
//  ColdHardCashATM_Functions
//
//  Created by user193450 on 7/6/21.
//

#import <Foundation/Foundation.h>


void selection(int num);
void deposit(int account, double amt);
void withdrawal(int account, double amt);
double checkBalance(int account);
void change(int num);
int getCoins(double amt);


int account1 = 23457;
int account2 = 37678;
int account3 = 568298;
double balance1 = 5645.89;
double balance2 = 564.67;
double balance3 = 1235.35;


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int operation;
        
        NSLog(@"Welcome to the NEW Cold Hard Cash ATM!");
        NSLog(@"\nEnter\n 1: for deposit,\n 2: for withdrawal,\n 3: to check account balance,\n 4: to get quarters for parking meters");
        scanf("%i", &operation);
        
        switch (operation) {
            case 1:
                selection(1);
                break;
            case 2:
                selection(2);
                break;
            case 3:
                selection(3);
                break;
            case 4:
                change(4);
                break;
    
            default:
                break;
        }
        
    }
    return 0;
}

void change(int num){
    double amount;
    NSLog(@"Enter the amount to convert");
    scanf("%lf", &amount);
    if(num == 4){
        NSLog(@" %i quarters dispensed",getCoins(amount));
    }
   
}

void selection(int num){
    int account;
    //double balance;
    NSLog(@"Enter an account number");
    scanf("%i", &account);
    if (account == account1 || account == account2 || account == account3) {
        if (num == 1) {
            double amt;
            NSLog(@"Enter the amount to deposit");
            scanf("%lf", &amt);
            deposit(account, amt);
        }
        
        else if (num == 2) {
            double amt;
            NSLog(@"Enter the amount to withdraw");
            scanf("%lf", &amt);
            withdrawal(account, amt);
        }
        
        else if (num == 3) {
            NSLog(@"The account balance is $%.2f", checkBalance(account));
        }
    }
}

void deposit(int account, double amt){
    if (account == account1) {
        balance1 += amt;
         NSLog(@"The balance in the account is %lf", balance1);
    }
    else if (account == account2) {
        balance2 += amt;
         NSLog(@"The balance in the account is %lf", balance2);
    }
    else if (account == account3) {
        balance3 += amt;
         NSLog(@"The balance in the account is %lf", balance3);
    }
   
}

void withdrawal(int account, double amt){
    if (account == account1) {
        balance1 -= amt;
         NSLog(@"The balance in the account is %lf", balance1);
    }
    else if (account == account2) {
        balance2 -= amt;
         NSLog(@"The balance in the account is %lf", balance2);
    }
    else if (account == account3) {
        balance3 -= amt;
         NSLog(@"The balance in the account is %lf", balance3);
    }
}

double checkBalance(int account){
    if (account == account1) {
        return balance1;
         
    }
    else if (account == account2) {
        return balance2;
         
    }
    else if (account == account3) {
        return balance3;
         
    }
    else
        return 0.0;
}

int getCoins(double amt){
    if (amt > 1) {
        return amt*100/25;
    }
    else
        return 0;
}

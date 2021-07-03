//
//  main.m
//  ColdHardCashATM
//
//  Created by user193450 on 6/30/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int account;
        char operation;
        double balance = 0.0, deposit, withdraw;
        
        NSLog(@"\nWelcome to the Cold Hard Cash ATM Service \nPlease enter your Account number");
        scanf("%i", &account);
        
        switch (account)
        {
            case 785415:
                balance = 200.00;
                NSLog(@"\nYour starting balance is %lf", balance);
                NSLog(@"\nWhat would you like to do today? Enter D for Deposit, W for Withdrawal");
                scanf("%s", &operation);
                if (operation == 'D' || operation == 'd')
                {
                    NSLog(@"Enter the amount to deposit");
                    scanf("%lf", &deposit);
                    balance += deposit;
                    NSLog(@"You deposited %lf. Your account balance is now %lf", deposit, balance);
                }
                else if (operation == 'W' || operation == 'w')
                {
                    NSLog(@"Enter the amount to withdraw");
                    scanf("%lf", &withdraw);
                    switch (balance < withdraw && balance >= 0.0 ? 'f' : 's')
                    {
                        case 'f':
                            NSLog(@"You cannot withdraw %lf because you only have %lf in Your account", withdraw, balance);
                            NSLog(@"Your account balance is %lf", balance);
                            break;
                        case 's':
                            balance -= withdraw;
                            NSLog(@"You have withdrawn %lf\n Your account balance is now %lf", withdraw, balance);
                            
                        default:
                            break;
                    }
                }
                
                break;
            case 348721:
                balance = 480.00;
                NSLog(@"\nYour starting balance is %lf", balance);
                NSLog(@"\nWhat would you like to do today? Enter D for Deposit, W for Withdrawal");
                scanf("%s", &operation);
                if (operation == 'D' || operation == 'd')
                {
                    NSLog(@"Enter the amount to deposit");
                    scanf("%lf", &deposit);
                    balance += deposit;
                    NSLog(@"You deposited %lf. Your account balance is now %lf", deposit, balance);
                }
                else if (operation == 'W' || operation == 'w')
                {
                    NSLog(@"Enter the amount to withdraw");
                    scanf("%lf", &withdraw);
                    switch (balance < withdraw && balance >= 0.0 ? 'f' : 's')
                    {
                        case 'f':
                            NSLog(@"You cannot withdraw %lf because you only have %lf in Your account", withdraw, balance);
                            NSLog(@"Your account balance is %lf", balance);
                            break;
                        case 's':
                            balance -= withdraw;
                            NSLog(@"You have withdrawn %lf\n Your account balance is now %lf", withdraw, balance);
                            
                        default:
                            break;
                    }
                }
                break;
            case 453927:
                balance = 1000.00;
                NSLog(@"\nYour starting balance is %lf", balance);
                NSLog(@"\nWhat would you like to do today? Enter D for Deposit, W for Withdrawal");
                scanf("%s", &operation);
                if (operation == 'D' || operation == 'd')
                {
                    NSLog(@"Enter the amount to deposit");
                    scanf("%lf", &deposit);
                    balance += deposit;
                    NSLog(@"You deposited %lf. Your account balance is now %lf", deposit, balance);
                }
                else if (operation == 'W' || operation == 'w')
                {
                    NSLog(@"Enter the amount to withdraw");
                    scanf("%lf", &withdraw);
                    switch (balance < withdraw && balance >= 0.0 ? 'f' : 's')
                    {
                        case 'f':
                            NSLog(@"You cannot withdraw %lf because you only have %lf in Your account", withdraw, balance);
                            NSLog(@"Your account balance is %lf", balance);
                            break;
                        case 's':
                            balance -= withdraw;
                            NSLog(@"You have withdrawn %lf\n Your account balance is now %lf", withdraw, balance);
                            
                        default:
                            break;
                    }
                }
                break;
            default:
                NSLog(@"Invalid Account Number");
                break;
        }

    }
    return 0;
}

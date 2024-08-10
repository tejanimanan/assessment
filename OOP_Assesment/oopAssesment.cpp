#include<iostream>
using namespace std;

class Menu {
public:
    void displayMenu() {
        cout << "\nWhat would you like to order?";
        cout << "\n--------------- Menu ----------------";
        cout << "\n 1) Pizzas";
        cout << "\n 2) Burgers";
        cout << "\n 3) Sandwiches";
        cout << "\n\nEnter your choice: ";
    }

    int getChoice() {
        int ch;
        cin >> ch;
        return ch;
    }
};

class BillCalculator {
public:
    void calculateBill(int category, int item, int quantity) {
        int price = 0;
        string itemName;

        if (category == 1) { // Pizzas
            switch (item) {
                case 1: price = 240; itemName = "Club Pizza"; break;
                case 2: price = 80; itemName = "Onion Pizza"; break;
                case 3: price = 100; itemName = "Extreme Veg Pizza"; break;
                default: cout << "\nInvalid choice. Please try again."; return;
            }
        } else if (category == 2) { // Burgers
            switch (item) {
                case 1: price = 90; itemName = "Club Burger"; break;
                case 2: price = 150; itemName = "Veg Burger"; break;
                case 3: price = 100; itemName = "Extreme Veg Burger"; break;
                default: cout << "\nInvalid choice. Please try again."; return;
            }
        } else if (category == 3) { // Sandwiches
            switch (item) {
                case 1: price = 240; itemName = "Club Sandwich"; break;
                case 2: price = 160; itemName = "Veg Sandwich"; break;
                case 3: price = 100; itemName = "Extreme Veg Sandwich"; break;
                default: cout << "\nInvalid choice. Please try again."; return;
            }
        } else {
            cout << "\nInvalid choice. Please try again.";
            return;
        }

        int total = price * quantity;
        cout << "\nYou selected " << itemName;
        cout << "\nYour total bill is: Rs." << total;
        cout << "\n\n\nYour order will be delivered in 40 minutes\n";
        cout << "\nThank you for ordering from Tops Tech Fast Food.\n";
    }
};

class FastFoodOrder : public Menu, public BillCalculator {
private:
    string name;

    void subchoice() {
        int ch = getChoice();
        int item, quantity;

        switch (ch) {
            case 1:
                cout << "\n\t1. Club Pizza - Rs.240";
                cout << "\n\t2. Onion Pizza - Rs.80";
                cout << "\n\t3. Extreme Veg Pizza - Rs.100";
                cout << "\n\nEnter which pizza you would like to have: ";
                break;
            case 2:
                cout << "\n\t1. Club Burger - Rs.90";
                cout << "\n\t2. Veg Burger - Rs.150";
                cout << "\n\t3. Extreme Veg Burger - Rs.100";
                cout << "\n\nEnter which burger you would like to have: ";
                break;
            case 3:
                cout << "\n\t1. Club Sandwich - Rs.240";
                cout << "\n\t2. Veg Sandwich - Rs.160";
                cout << "\n\t3. Extreme Veg Sandwich - Rs.100";
                cout << "\n\nEnter which sandwich you would like to have: ";
                break;
            default:
                cout << "\nInvalid choice. Please try again.";
                return;
        }

        cin >> item;

        cout << "\nEnter quantity: ";
        cin >> quantity;

        calculateBill(ch, item, quantity);
    }

public:
    void startOrder() {
        char ch;
        cout << "----------------- Tops Tech. Fast Food ------------------\n";
        cout << "\nPlease Enter your Name: ";
        cin >> name;
        cout << "\nHello, " << name << "!" << endl;

        do {
            displayMenu();
            subchoice();
            cout << "\n\nWould you like to order anything else? (Y/n): ";
            cin >> ch;
        } while (ch == 'y' || ch == 'Y');

        cout << "\nThank you ........\n";
    }
};

int main() {
    FastFoodOrder order;
    order.startOrder();
    return 0;
}


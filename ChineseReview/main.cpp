#include <iostream>
#include <string>
#include <vector>

class Vocabulary {
public:
    void add();//setter
    void display();//getter
    void remove();
private:
    std::vector<std::string> words;
    std::vector<std::string>::iterator i;
};
    void Vocabulary::add() {
        std::string character;
        std::cin >> character;
        words.push_back(character);
    }

    void Vocabulary::display() {
        for (i = words.begin(); i != words.end(); i++) {
            std::cout << '\t' << *i << std::endl;
        }
    }

    void Vocabulary::remove() {
        std::string character;
        std::cin >> character;
        for (i = words.begin(); i != words.end(); ++i) {
            if(*i == character) {
                words.erase(i);
            }
        }
    }

int main() {
    Vocabulary vocab;
    bool running = true;
    std::string action;
    while (running) {
        std::cin >> action;
        if(action == "add") {
            vocab.add();
        } else if(action == "display") {
            vocab.display();
        } else if(action == "remove") {
            vocab.remove();
        } else if(action == "exit") {
            std::cout << "Exited successfully." << std::endl;
            running = false;
        } else {
            std::cout << std::endl;
        }
    }
return 0;
}

#include <iostream>
#include <string>
#include <vector>

void tabCout(std::string);

class Vocabulary {
public:
    void add();//setter
    void display();//getter
    void remove();
    void help();
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

    void Vocabulary::help() {
        tabCout("touch -prompts you for a new word／phrase and then saves it");
        tabCout("ls -list all the words");
        tabCout("rm -prompts you for a word to PERMANENTLY delete");
        tabCout("exit -exits the application");
    }

int main() {
    std::cout << "type -help- for commands" << std::endl;
    Vocabulary vocab;
    bool running = true;
    std::string action;
    while (running) {
        std::cin >> action;
        if(action == "help") {
            vocab.help();
        } else if(action == "touch") {
            vocab.add();
        } else if(action == "ls") {
            vocab.display();
        } else if(action == "rm") {
            vocab.remove();
        } else if(action == "exit") {
            std::cout << "Exited successfully." << std::endl;
            running = false;
        }
    }
return 0;
}

void tabCout(std::string string) {
    std::cout << '\t' << string << std::endl;
}

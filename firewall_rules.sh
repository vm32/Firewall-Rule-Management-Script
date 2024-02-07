#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' 
function list_rules() {
    echo -e "${GREEN}Current iptables rules:${NC}"
    echo "---------------------------------------------"
    iptables -L --line-numbers -n -v | while IFS= read -r line; do
        if [[ "${line}" =~ ^Chain ]]; then
            echo -e "${RED}$line${NC}"
            echo "---------------------------------------------"
        else
            echo "${line}"
        fi
    done
    echo "---------------------------------------------"
    echo ""
}

function add_rule() {
    read -p "Enter the chain (INPUT, FORWARD, OUTPUT): " chain
    read -p "Enter the protocol (tcp, udp, icmp, all): " protocol
    read -p "Enter the port number: " port
    read -p "Enter the action (ACCEPT, DROP, REJECT): " action

    if ! [[ "${port}" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Error: Port must be a number.${NC}"
        return
    fi
    iptables -A "${chain}" -p "${protocol}" --dport "${port}" -j "${action}"
    echo -e "${GREEN}Rule added successfully.${NC}"
}

function delete_rule() {
    read -p "Enter the chain (INPUT, FORWARD, OUTPUT) from which to delete the rule: " chain
    read -p "Enter the rule number to delete: " rule_number
    if ! [[ "${rule_number}" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Error: Rule number must be a number.${NC}"
        return
    fi
    iptables -D "${chain}" "${rule_number}"
    echo -e "${GREEN}Rule deleted successfully.${NC}"
}

function main_menu() {
    clear
    echo -e "${GREEN}Firewall Rule Management Script${NC}"
    echo "1. List current rules"
    echo "2. Add a new rule"
    echo "3. Delete a rule"
    echo "4. Exit"
    read -p "Enter your choice [1-4]: " choice

    case "${choice}" in
        1)
            list_rules
            ;;
        2)
            add_rule
            ;;
        3)
            delete_rule
            ;;
        4)
            echo "Exiting script."
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid option, please choose a number between 1 and 4.${NC}"
            ;;
    esac
}

while true; do
    main_menu
    read -p "Press Enter to continue..."
done

function wordsNumbers(number) {
    var single = {
        1: "один",
        2: "два",
        3: "три",
        4: "четрые",
        5: "пять",
        6: "шесть",
        7: "семь",
        8: "восемь",
        9: "девять",
        10: "десять",
        11: "одинадцать",
        12: "двенадцать",
        13: "тринадцать",
        14: "четырнадцать",
        15: "пятнадцать",
        16: "шестнадцать",
        17: "семнадцать",
        18: "восемнадцать",
        19: "девятнадцать"
    };

    var dozens = {
        2: "двадцать",
        3: "тридцать",
        4: "сорок",
        5: "пятьдесят",
        6: "шестдисят",
        7: "семьдесят",
        8: "восемьдесят",
        9: "девяносто"
    };

    var hundred = {
        1: "сто",
        2: "двести",
        3: "триста",
        4: "четыреста",
        5: "пятьсот",
        6: "шестьсот",
        7: "семьсот",
        8: "восемьсот",
        9: "девятсот"
    };

    var thousands = {1: "одна тысяча", 2: "две тысячи", 3: "три тысячи", 4: "четыре тысячи", 5: "тысяч"};

    var result = "";
    if (parseInt(number)) {
        var thousand = Math.floor(number / 1000);
        var number = number % 1000;
        if (thousand > 0) {
            if (thousand == 1) {
                result = result + thousands[1];
            } else if (thousand >= 2 && thousands <= 4) {
                result = result + thousands[thousands] + ' ';
            } else if (thousand > 4) {
                result = result + single[thousand] + ' ' + thousands[5] + ' ';
            }
        }

        var hundreds = Math.floor(number / 100);
        var number = number % 100;
        if (hundreds > 0) {
            result = result + hundred[hundreds] + ' ';
        }

        var dec = Math.floor(number / 10);
        var number = number % 10;
        if (dec > 0) {
            if (dec > 1) {
                result = result + dozens[dec] + ' ';
            } else {
                number = number + 10;
                result = result + single[number] + ' ';
            }
        }

        if (number > 0 && dec != 1) {
            result = result + single[number];
        }
        return result;
    }
    return false;
}
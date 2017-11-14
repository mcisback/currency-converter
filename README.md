# Perl Command Line Currency Converter


## Install

    git clone https://github.com/mcisback/currency-converter
    
    mkdir ~/Scripts

    mv currency-converter ~/Scripts

    echo "export PATH="$PATH:~/Scripts/currency-converter" >> ~/.bash_rc

## Usage

    $ getcurrency.pl <from_currency> <to_currency> <amout> [<verbose>]

## Examples

    $ getcurrency.pl USD EUR 12345
    
    12345 USD is 10491.65 EUR

    $ getcurrency.pl USD EUR 12345 verbose

    [....] Print ALL OUTPUT, include Google Finance HTML PAGES

    12345 USD is 10491.65 EUR

## Credits

Made by [Marco Caggiano](https://www.marcocaggiano.com "Marco Caggiano Website"]



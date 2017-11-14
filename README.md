# Perl Command Line Currency Converter


## Install

    git clone https://github.com/mcisback/currency-converter
    
    mkdir ~/Scripts

    mv currency-converter ~/Scripts

    chmod +x ~/Scripts/currency-converter/getcurrency.pl

    echo "export PATH=\"$PATH:$HOME/Scripts/currency-converter\"" >> ~/.bashrc

## Usage

    $ getcurrency.pl <from_currency> <to_currency> <amout> [<verbose>]

## Examples

    $ getcurrency.pl USD EUR 12345
    
    12345 USD is 10491.65 EUR

    $ getcurrency.pl USD EUR 12345 verbose

    [....] Print ALL OUTPUT, include Google Finance HTML PAGES

    12345 USD is 10491.65 EUR

## Credits

Made by [Marco Caggiano](https://www.marcocaggiano.com "Marco Caggiano Website")



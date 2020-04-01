FROM hhvm/hhvm-proxygen:latest

RUN rm -rf /var/www
ADD . /var/www

# Add Composer for PHP package management
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Not sure if we need to run these
# composer require hhvm/hsl hhvm/hhvm-autoload
# composer require --dev hhvm/hhast hhvm/hacktest facebook/fbexpect

EXPOSE 80

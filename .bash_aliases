alias dex='echo Exec into $(~/get_php_container) && docker exec -it $(~/get_php_container)'
alias art="dex php artisan"
alias com="dex composer"
alias log="tail storage/logs/laravel.log -fn500"
dex() {
    container=$(~/get_php_container)
    if docker exec "$container" id -u laravel &>/dev/null; then
        echo "Exec into $container as laravel"
        docker exec -it -u laravel "$container" "${@:-bash}"
    else
        echo "Exec into $container"
        docker exec -it "$container" "${@:-bash}"
    fi
}
alias art="dex php artisan"
alias com="dex composer"
alias log="tail storage/logs/laravel.log -fn500"

echo 'Starting expo in separate process'
expo start --ios &
echo 'Waiting on expo to start in other process and open an ios sim'
sleep 30
echo 'Running detox tests'
detox test

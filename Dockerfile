FROM rabbitmq:management

RUN apt-get update

RUN apt-get install -y wget

RUN wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.11.1/rabbitmq_delayed_message_exchange-3.11.1.ez -P /opt/rabbitmq/plugins

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

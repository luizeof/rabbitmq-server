FROM rabbitmq:management

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

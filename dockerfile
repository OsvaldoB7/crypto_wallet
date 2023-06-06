# Use a imagem base do Ruby 3.2.1
FROM ruby:3.2.1

# Configuração do ambiente
ENV LANG C.UTF-8
ENV RAILS_ENV production
ENV RAILS_ROOT /app

# Instalação das dependências do sistema
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
    postgresql-client

# Criação do diretório de trabalho
RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT

# Copia os arquivos do projeto para o diretório de trabalho
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 20 --retry 5 --without development test

# Copia o código fonte do projeto
COPY . .

# Pré-compila os assets do Rails
RUN bundle exec rake assets:precompile

# Expõe a porta 3000 para acessar a aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

FROM node:20-slim

RUN apt-get update && apt-get install -y python3 make g++ git \
    && rm -rf /var/lib/apt/lists/* \
    && corepack enable && corepack prepare pnpm@8.15.5 --activate

WORKDIR /app
COPY . .

RUN pnpm install --frozen-lockfile
RUN pnpm build

# Instala o CLI globalmente a partir do build local
RUN npm link packages/smithy

# Inicializa o workspace
RUN sf init

EXPOSE 3457

CMD ["sf", "serve", "--host", "0.0.0.0"]

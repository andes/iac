FROM rust:1.52 as build

WORKDIR /usr/src/dummy-server

COPY . .

# RUN cargo install --path . \
RUN cargo build --release

FROM rust:1.52

WORKDIR /app

COPY --from=build /usr/src/dummy-server/target/release/test_server /app/test_server

#RUN cp /usr/src/dummy-server/target/release/test_server /app/test_server 
#RUN ls /

CMD  ./test_server

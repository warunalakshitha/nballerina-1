// @productions is-not-expr module-const-decl is-expr boolean-literal int-literal
import ballerina/io;

const T = false !is int;
const F = 1 !is int;

public function main() {
    io:println(T); // @output true
    io:println(F); // @output false
}

// @productions module-const-decl
import ballerina/io;

const X = Y; // @error

public function main() {
    io:println(X);
}

// @productions string-literal equality multiplicative-expr if-else-stmt equality-expr floating-point-literal return-stmt additive-expr
import ballerina/io;

public function main() {
    if 10.5 == 0.5 + 0.5 + 2.0 / 0.2 + 2.0 * 1.5 - 3.5 {
        return;
    }
    io:println("impossible"); // @error
}

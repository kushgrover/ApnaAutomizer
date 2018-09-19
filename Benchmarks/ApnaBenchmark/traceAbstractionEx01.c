int nondet() {
    int x;
    return x;
}


int main() {
    int x, y;

    x = 0;
    y = 0;

    while (nondet()) {
        x = x + 1;
    }


    return 0;
}

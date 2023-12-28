#include <iostream>
#include <vector>
#include <algorithm>

int main() {
    int N;
    std::cin >> N;

    std::vector<int> dp = {0, 1};

    for (int i = 2; i <= N; ++i) {
        int minCount = 4;
        int j = 1;

        while (j * j <= i) {
            minCount = std::min(minCount, dp[i - j * j]);
            j += 1;
        }

        dp.push_back(minCount + 1);
    }

    std::cout << dp[N] << std::endl;

    return 0;
}

#include <fstream>
#include <iostream>
#include <cstring>
using namespace std;
const int LEN = 1000000;
int main(int argc, char** argv)
{
	if (argc != 5 || strcmp(argv[1], "-f") != 0 || strcmp(argv[3], "-o") != 0)
		return -1;
	
	cout << "input: " << argv[2] << endl;
	cout << "output: " << argv[4] << endl;

	char buf[LEN] = {0};
	ifstream fin(argv[2], ios::binary);
	ofstream fout(argv[4]);
	fin.read(buf, sizeof(char) * LEN);
	fin.close();
	char hexmap[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
	int len = LEN - 1;
	while (len >= 0 && buf[len] == '\0')
		len--;
	len++;
	// cout << len << endl;

	for (int i = 0; i < len; i++)
	{
		// cout << hexmap[(int)((unsigned short)buf[i]) / 16] << hexmap[(int)((unsigned short)buf[i]) % 16];
		// cout << (unsigned short)((buf[i] >> 4) & 15) << ' ' << (unsigned short)(buf[i] & 15) << ' ';
		fout << hexmap[(unsigned short)((buf[i] >> 4) & 15)] << hexmap[(unsigned short)(buf[i] & 15)];
		// cout << (unsigned short)buf[i] << ' ';
		if (i % 4 == 3)
			fout << endl;
	}
	fout.close();

	return 0;
}

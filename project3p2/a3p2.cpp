#include <iostream>
using namespace std;

void CoutCstr(char cstr[]);
void CoutCstrNL(char cstr[]);
void CoutOneInt(int oneInt);
void PopulateArray(int a[], int* usedPtr, int cap);
void ShiftLeftBy1(int* firstElePtr, int* lastElePtr);
void MakeAM1D(int a[], int* usedPtr);
int  CalcTruncAvg(int a[], int used);
void CalcA2A3(int truncAvg, int a1[], int a2[], int a3[], int* used1Ptr, int* used2Ptr, int* used3Ptr);
void ProcArrays(int* used3Ptr, int a1[], int a2[], int a3[], int* used1Ptr, int* used2Ptr);
void ShowArray(int a[], int used);
void ShowArrayLabeled(int a[], int used, char label[]);

int main()
{
                int a1[12],
                    a2[12],
                    a3[12];
                char reply;
                int used1,
                    used2,
                    used3;
                char begA1Str[]  = "beginning a1: ";
                char am1dA1Str[] = "a1 (dups<=1): ";
                char procA1Str[] = "processed a1: ";
                char procA2Str[] = "          a2: ";
                char procA3Str[] = "          a3: ";
                char dacStr[]    = "Do another case? (n or N = no, others = yes) ";
                char dlStr[]     = "================================";
                char byeStr[]    = "bye...";

                reply = 'y';
                goto WTest1;
begW1:
                PopulateArray(a1, &used1, 12);
                ShowArrayLabeled(a1, used1, begA1Str);
                ProcArrays(&used3, a1, a2, a3, &used1, &used2);
                ShowArrayLabeled(a1, used1, procA1Str);
                ShowArrayLabeled(a2, used2, procA2Str);
                ShowArrayLabeled(a3, used3, procA3Str);
                cout << dacStr;
                cin >> reply;
WTest1:         if (reply == 'n') goto xitW1;
                if (reply != 'N') goto begW1;
endW1:
xitW1:
                cout << dlStr << '\n';
                cout << byeStr << '\n';
                cout << dlStr << '\n';

                return 0;
}

void CoutCstr(char cstr[])
{
                cout << cstr;
}

void CoutCstrNL(char cstr[])
{
                CoutCstr(cstr);
                cout << '\n';
}

void CoutOneInt(int oneInt)
{
                cout << oneInt;
}

void PopulateArray(int a[], int* usedPtr, int cap)
{
                char reply;
                char einStr[]    = "Enter integer #";
                char moStr[]     = "Max of ";
                char ieStr[]     = " ints entered...";
                char emiStr[]    = "Enter more ints? (n or N = no, others = yes) ";
                int *hopPtr;

                *usedPtr = 0;
                hopPtr = a;
                goto WTest2;
begW2:
                CoutCstr(einStr);
                CoutOneInt(*usedPtr + 1);
                cout << ':' << ' ';
                cin >> *hopPtr;
                ++(*usedPtr);
                ++hopPtr;
                if (*usedPtr >= cap) goto else1;
begI1:
                cout << emiStr;
                cin >> reply;
                goto endI1;
else1:
                CoutCstr(moStr);
                CoutOneInt(cap);
                CoutCstr(ieStr);
                cout << endl;
                reply = 'n';
endI1:
WTest2:         if (reply == 'n') goto xitW2;
                if (reply != 'N') goto begW2;
endW2:
xitW2:
                return;
}

void ShowArray(int a[], int used)
{
                int *hopPtr;
                int *endPtr;

                if (used <= 0) goto endI2;
begI2:
                hopPtr = a;
                endPtr = a + used;
begDW1:
                cout << *hopPtr << ' ' << ' ';
                ++hopPtr;
endDW1:
DWTest1:        if (hopPtr < endPtr) goto begDW1;
endI2:
                cout << endl;
}

void ShowArrayLabeled(int a[], int used, char label[])
{
                CoutCstr(label);
                ShowArray(a, used);
}

void ShiftLeftBy1(int* firstElePtr, int* lastElePtr)
// shifts each element beginning @ firstElePtr & ending @ lastElePtr (inclusive)
{
                int* elePtr;
                int valOfEle;

                elePtr = firstElePtr;
                goto FTest2;
begF2:
                valOfEle = *elePtr;
                *(elePtr - 1) = valOfEle;
                ++elePtr;
FTest2:         if (elePtr <= lastElePtr) goto begF2;
endF2:
                return;
}

void MakeAM1D(int a[], int* usedPtr)
{
                int found;
                int* hopPtr1;
                int* hopPtr2;
                int* endPtr1;
                int* endPtr2;

                hopPtr1 = a;
                endPtr1 = a + *usedPtr - 1;
                goto WTest3;
begW3:
                found = 0;
                hopPtr2 = hopPtr1 + 1;
                endPtr2 = a + *usedPtr;
                goto FTest1;
begF1:
                if (*hopPtr2 != *hopPtr1) goto endI4;
begI4:
                if (found != 1) goto else5;
begI5:
                ShiftLeftBy1(hopPtr2 + 1, endPtr2 - 1);
                --(*usedPtr);
                --endPtr1;
                --endPtr2;
                --hopPtr2;
                goto endI5;
else5:
                ++found;
endI5:
endI4:
                ++hopPtr2;
FTest1:         if (hopPtr2 < endPtr2) goto begF1;
endF1:
                ++hopPtr1;
WTest3:         if (hopPtr1 < endPtr1) goto begW3;
endW3:
                return;
}

int CalcTruncAvg(int a[], int used)
{
                int sum;
                int* hopPtr;
                int* endPtr;

                sum = 0;
                hopPtr = a + used - 1;
                endPtr = a;
begDW4:
                sum += *hopPtr;
                --hopPtr;
endDW4:
DWTest4:        if (hopPtr >= endPtr) goto begDW4;
                return sum / used;
}

void CalcA2A3(int truncAvg, int a1[], int a2[], int a3[], int* used1Ptr, int* used2Ptr, int* used3Ptr)
{
                int* hopPtr1;
                int* hopPtr2;
                int* hopPtr3;
                int* hopPtr11;
                int* endPtr1;
                int* endPtr11;

                *used2Ptr = 0;
                *used3Ptr = 0;
                hopPtr2 = a2;
                hopPtr3 = a3;

                hopPtr1 = a1;
                endPtr1 = a1 + *used1Ptr;
                goto FTest3;
begF3:
                if (*hopPtr1 == truncAvg) goto endI8;
begI8:
                if (*hopPtr1 >= truncAvg) goto else9;
begI9:
                *hopPtr2 = *hopPtr1;
                ++(*used2Ptr);
                ++hopPtr2;
                goto endI9;
else9:
                *hopPtr3 = *hopPtr1;
                ++(*used3Ptr);
                ++hopPtr3;
endI9:
                hopPtr11 = hopPtr1 + 1;
                endPtr11 = a1 + *used1Ptr;
                goto FTest4;
begF4:
                *(hopPtr11 - 1) = *hopPtr11;
                ++hopPtr11;
FTest4:         if (hopPtr11 < endPtr11) goto begF4;
endF4:
                --(*used1Ptr);
                --endPtr1;
                --hopPtr1;
endI8:
                ++hopPtr1;
FTest3:         if (hopPtr1 < endPtr1) goto begF3;
endF3:
                if (*used1Ptr != 0) goto endIa;
begIa:
                *(a1 + 0) = truncAvg;
                ++(*used1Ptr);
endIa:
                return;
}

void ProcArrays(int* used3Ptr, int a1[], int a2[], int a3[], int* used1Ptr, int* used2Ptr)
{
                int truncAvg;
                char am1dA1Str[] = "a1 (dups<=1): ";

                if (*used1Ptr <= 1) goto else3;
begI3:
                MakeAM1D(a1, used1Ptr);
                ShowArrayLabeled(a1, *used1Ptr, am1dA1Str);
                if (*used1Ptr <= 0) goto endI7;
begI7:
                truncAvg = CalcTruncAvg(a1, *used1Ptr);
                CalcA2A3(truncAvg, a1, a2, a3, used1Ptr, used2Ptr, used3Ptr);
endI7:
                goto endI3;
else3:
                ShowArrayLabeled(a1, *used1Ptr, am1dA1Str);
                *used2Ptr = 0;
                *used3Ptr = 0;
endI3:
                return;
}


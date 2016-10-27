#include <iostream>
#include <fstream>
#include <cassert>
#include <stdlib.h>
#include <cmath>
#include <list>
#include <vector>
#include <cstdlib>

#include "board.h"

using namespace std;

// print solutions
std::ostream& operator<<(std::ostream& ostr, const vector<vector<Point> > &solutions) {
    ostr << "Solution:" << std::endl;
    vector<vector<Point> >::const_iterator iterAllPaths = solutions.begin();
    vector<Point>::const_iterator iterPaths;
    while (iterAllPaths != solutions.end()) {
        iterPaths = (*iterAllPaths).begin();
        while (iterPaths != (*iterAllPaths).end()){
            std::cout << "(" << iterPaths->x << "," << iterPaths->y << ")";
            ++iterPaths;
        }
        std::cout << std::endl;
        ++iterAllPaths;
    }
    return ostr;
}

// print blockedPoints
std::ostream& operator<<(std::ostream& ostr, const vector<vector<bool> > &blocked) {
    int width = blocked.size();
    int height = blocked[0].size();
    ostr << "+" << std::string(width,'-') << "+" << std::endl;  // top frame
    for (int y = --height; y >= 0; y--) {
        ostr << "|";
        for (int x = 0; x < width; x++) {  // each row
            if (blocked[x][y]) ostr << " ";
            else ostr << "X";
        }
        ostr << "|" << std::endl;
    }
    ostr << "+" << std::string(width,'-') << "+" << std::endl;  // bottom frame
    return ostr;
}

// try 4 directions of point(x,y), and point(x2,y2) is the target point
void findAllPaths(vector<vector<bool> > &blockedPoints,int x, int y, const int &x2, const int &y2,
                  int distance, vector<Point> &paths, vector<vector<Point> > &allPaths){
    if (x == x2 && y == y2) {
        // end recursion when point1 has come to point2 or distance == 0.
        if (distance == 0)  allPaths.push_back(paths);
    }else {
        // first check if the next point that point1 will move to is valid and unblocked
        // then check if the next point is too far away from the target point2
        if (y + 1 < blockedPoints[0].size() && blockedPoints[x][y+1] == true
              && abs(x2 - x) + abs(y2 - y - 1) <= distance - 1){
            blockedPoints[x][y] = false;  paths.push_back(Point(x,y+1));
            findAllPaths(blockedPoints, x, y+1, x2, y2, distance - 1, paths, allPaths);
            blockedPoints[x][y] = true;   paths.pop_back();
        }
        if (y - 1 >= 0 && blockedPoints[x][y-1] == true
              && abs(x2 - x) + abs(y2 - y + 1) <= distance - 1){
            blockedPoints[x][y] = false;  paths.push_back(Point(x, y-1));
            findAllPaths(blockedPoints, x, y-1, x2, y2, distance - 1, paths, allPaths);
            blockedPoints[x][y] = true;   paths.pop_back();
        }
        if (x + 1 < blockedPoints.size() && blockedPoints[x+1][y] == true
              && abs(x2 - x - 1) + abs(y2 - y) <= distance - 1){
            blockedPoints[x][y] = false;  paths.push_back(Point(x+1,y));
            findAllPaths(blockedPoints, x+1, y, x2, y2, distance - 1, paths, allPaths);
            blockedPoints[x][y] = true;   paths.pop_back();
        }
        if (x - 1 >= 0 && blockedPoints[x-1][y] == true
              && abs(x2 - x + 1) + abs(y2 - y) <= distance - 1){
            blockedPoints[x][y] = false;  paths.push_back(Point(x-1, y));
            findAllPaths(blockedPoints, x-1, y, x2, y2, distance - 1, paths, allPaths);
            blockedPoints[x][y] = true;   paths.pop_back();
        }
    }
};

// stroke one path each time you call stroke recursion function
void stroke(vector<vector<Point> > &pairLists, vector<vector<bool> > &blockedPoints, vector<vector<Point> > &solutions,
            int pos, vector<Point> &pointsList, int &numSolutions,
            vector<vector<int > > &boardNums, vector<vector<Point*> > &boardPtrs, const bool &all_solutions){
    // find the first point need to process
    while (pos != pairLists.size() && blockedPoints[pointsList[pos].x, pointsList[pos].y] == false)
        ++pos;
    if (pos == pairLists.size()) { // successfully stroke all points
        ++numSolutions;
        std::cout << solutions << blockedPoints << std::endl;
        if (!all_solutions) exit(0); // not require all_solutions, exit after find one solution.
    }else {// there is a point that does not find a pair, to find all pairs of iter
        int x1 = pointsList[pos].x, y1 = pointsList[pos].y, currLength = boardNums[x1][y1];
        vector<Point>::iterator iter2 = ;
        vector<vector<Point> > allPaths;  // store all successful paths between iter and iter2
        vector<vector<Point> >::iterator iterAllPaths;
        vector<Point> paths;  // store one successful path between iter and iter2
        vector<Point>::iterator iterPaths;
        int pointsDistance = 0;
    
        // find all paths starting from the point--iter
        paths.reserve(20);
        while (++iter2 != pairLists[currLength].end()) {
            if (iter2->isFindPairs == true) continue;
            pointsDistance = abs(iter->x - iter2->x) + abs(iter->y - iter2->y) + 1;
            if (pointsDistance <= currLength){
                paths.clear();
                paths.push_back(Point(iter->x, iter->y));
                blockedPoints[iter ->x][iter ->y] = true;
                blockedPoints[iter2->x][iter2->y] = true;
                findAllPaths(blockedPoints, iter->x, iter->y, iter2->x, iter2->y, currLength-1, paths, allPaths);
                blockedPoints[iter ->x][iter ->y] = false;
                blockedPoints[iter2->x][iter2->y] = false;
            }
        }
    
        //  iterate each path found and step into the next stroke
        if (allPaths.size() != 0) {
            iterAllPaths = allPaths.begin();
            while (iterAllPaths != allPaths.end()) {
                // change the status of two points
                for (iter2 = iter; iter2 != pairLists[currLength].end(); ++iter2){
                    if (iter2->x == iterAllPaths->back().x && iter2->y == iterAllPaths->back().y) break;
                }
                iter->isFindPairs = true;  iter2->isFindPairs = true;
                // mark all points on the path blocked
                iterPaths = (*iterAllPaths).begin();
                while (iterPaths != (*iterAllPaths).end()){
                    blockedPoints[iterPaths->x][iterPaths->y] = false;
                    ++iterPaths;
                }
                // finish one stroke, go to the next recursion
                solutions.push_back(*iterAllPaths);
                stroke(pairLists, blockedPoints, solutions, 0, pointsList, numSolutions, all_solutions);
                // roll back all changes before
                solutions.pop_back();
                iterPaths = ++(*iterAllPaths).begin();
                while (iterPaths != --(*iterAllPaths).end()){
                    blockedPoints[iterPaths->x][iterPaths->y] = true;
                    ++iterPaths;
                }
                iter->isFindPairs = false;  iter2->isFindPairs = false;
                ++iterAllPaths;
            }
        }
    }
}
}

// driver functions, start to search
void startToSearch(vector<vector<Point> > &pairLists, vector<vector<bool> > &blockedPoints,
                   const int &numPoints, vector<Point> &pointsList, vector<vector<int > > &boardNums,
                   vector<vector<Point*> > &boardPtrs, const bool &all_solutions){
    vector<vector<Point> > solutions;  // solutions stores all the stroke paths.
    int numSolutions = 0;
    // stroke the Points whose length = 1.
    vector<Point>::iterator iter = pairLists[1].begin();
    while (iter != pairLists[1].end()){
        solutions.push_back(vector<Point>(1, Point(iter->x, iter->y)));
        ++iter;
    }
    // stroke the Points whose length > 1
    stroke(pairLists, blockedPoints, solutions, 0, pointsList, numSolutions, boardNums, boardPtrs, all_solutions);
    // print the number of solutions
    if (all_solutions) {
        if (numSolutions >0) std::cout << "Found " << numSolutions << " solution(s)\n";
        else std::cout << "No solutions\n";
    }else {
        if (numSolutions == 0) std::cout << "No solutions\n";
    }
}

int main(int argc, char *argv[]) {
    // parse the arguments
    if (argc < 2) {
        std::cerr << "USAGE:  " << argv[0] << " <puzzlefile>" << std::endl;
        std::cerr << "        " << argv[0] << " <puzzlefile> find_all_solutions" << std::endl;
        exit(0);
    }
    bool all_solutions = false;
    if (argc > 2) {
        assert (argc == 3);
        assert (std::string(argv[2]) == std::string("find_all_solutions"));
        all_solutions = true;
    }
    
    // open the file
    std::ifstream istr(argv[1]);
    if (!istr.good()) {
        std::cerr << "ERROR!  cannot open " << argv[1] << std::endl;
        exit(0);
    }
    
    // read the file
    std::string token;
    int width, height;
    istr >> token >> width;
    assert (token == "width");
    istr >> token >> height;
    assert (token == "height");
    assert (width > 0 && height > 0);
    
    // pairLists stores the Points that have the same length in one slot of vector.
    // blockedPoints is used to mark the stroked points, true means unblocked and false means blocked
    Board board(width, height);
    vector<vector<int > > boardNums(width, vector<int >(height, 0));
    vector<vector<Point*> > boardPtrs(width, vector<Point*>(height, nullptr));
    vector<vector<Point> > pairLists(31, vector<Point>());
    vector<vector<bool> > blockedPoints(width, vector<bool>(height, true));
    int x, y, v, numPoints = 0;
    while (istr >> x >> y >> v) {
        assert (x >= 0 && x < width);
        assert (y >= 0 && y < height);
        board.set(x, y, v);  boardNums[x][y] = v;
        boardPtrs[x][y] = &pairLists[v].back();
        pairLists[v].push_back(Point(x,y));
        blockedPoints[x][y] = false;
        ++numPoints;
    }
    for (int i = 30; i >=0 && pairLists[i].size() == 0; i--)
        pairLists.pop_back();
    // create a list of all point to facilitate searching process
    vector<Point> pointsList;   pointsList.reserve(numPoints);
    for (int i = 0; i < width; ++i)
        for (int j = 0; j < height; ++j)
            if (blockedPoints[i][j] == false){
                pointsList.push_back(Point(i,j));
            }
    
    std::cout << board << std::endl;
    startToSearch(pairLists, blockedPoints, numPoints, pointsList, boardNums, boardPtrs, all_solutions);  // main function
    
    return 0;
}
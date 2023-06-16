// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Student {

    string[] internal courses;

    function showCourses() public virtual returns(string[] memory) {
        delete courses; // courses 배열의 모든 것을 삭제하며 배열의 길이 역시 0이 된다. 즉, 초기화된다고 생각하면 된다.
        courses.push("English");
        courses.push("Music");
        return courses;
    }
}

contract ArtStudent is Student() {

    function showCourses() public override returns(string[] memory) {
        
        super.showCourses(); // 본래 함수의 모든 로직을 갖고 올 수 있다. 즉, Student의 showCourses() 함수의 로직을 ArtStudent의 함수 showCourses에 추가하는 것이다.
        courses.push("Art"); // Art라는 과목을 courses 배열에 추가해 반환한다. 즉, English, Music, Art가 들어 있는 배열이 반환 될 것이다.
        return courses;
    }
}
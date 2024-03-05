$('select[data-value]').each(function(index, el) {
	const $el = $(el);

	defaultValue = $el.attr('data-value').trim();

	if (defaultValue.length > 0) {
		$el.val(defaultValue);
	}
	
});

function Mobile_TopBar__init() {
  $(".mobile_top_bar .btn_toggle").click(function () {
    $(this).toggleClass("active");
  });
}

function TopBar__init() {
  $(".top_bar .menu_box_1 > ul > li").mouseover(function () {
    var $height = $(this).find("> ul").height();

    var height_plus = $height + 50;

    $(".bg").css("height", height_plus + "px");
  });

  $(".top_bar .menu_box_1 > ul > li").mouseleave(function () {
    $(".bg").css("height", "0px");
  });
}

TopBar__init();
Mobile_TopBar__init();


/* 메인 화면 이미지 넘기기 */
 // 현재 보여지고 있는 이미지의 인덱스를 추적하기 위한 변수
    let currentImageIndex = 0;

    // 이미지 파일 경로들을 배열에 저장합니다.
    const images = [
        "https://i.ibb.co/5X3VtLg/image.jpg", "https://i.ibb.co/vPtz1fs/image.jpg", "https://cdn.chungnamilbo.co.kr/news/photo/202208/673955_257859_2551.jpg"
        // 다음 이미지들의 경로를 여기에 추가합니다.
    ];

    // 텍스트 내용들을 배열에 저장합니다.
    const texts = [
        { title: "2024년 벚꽃 개화 시즌", info: "대전, 충청도 벚꽃 보러가자!", greeting: "안녕, 봄!", description: "올 봄엔 GABODA와 함께!" },
        { title: "2024 따뜻한 봄날에", info: "산뜻한 봄날의 향기를 맡자!", greeting: "숲속을 떠나보는 건 어때요?", description: "" },
        { title: "시원한 바람과", info: "새파란 하늘의 봄 날", greeting: "드라이브 어때요?", description: "" }
        // 다음 텍스트 내용들을 여기에 추가합니다.
    ];

    // 화살표를 클릭할 때 실행되는 함수
    function changeImage(direction) {
        // 왼쪽 화살표를 클릭한 경우
        if (direction === "left") {
            // 이미지 인덱스를 감소시킵니다.
            currentImageIndex--;
            // 이미지 인덱스가 음수인 경우 마지막 이미지로 이동합니다.
            if (currentImageIndex < 0) {
                currentImageIndex = images.length - 1;
            }
        } 
        // 오른쪽 화살표를 클릭한 경우
        else if (direction === "right") {
            // 이미지 인덱스를 증가시킵니다.
            currentImageIndex++;
            // 이미지 인덱스가 이미지 배열의 길이보다 큰 경우 첫 번째 이미지로 이동합니다.
            if (currentImageIndex >= images.length) {
                currentImageIndex = 0;
            }
        }
        // 이미지 요소를 찾아서 src 속성을 변경합니다.
        const imgElement = document.querySelector(".img-box img");
        imgElement.src = images[currentImageIndex];
        
        // 텍스트 내용을 변경합니다.
        const textElements = document.querySelectorAll(".text-box > *");
        textElements[0].textContent = texts[currentImageIndex].title;
        textElements[1].textContent = texts[currentImageIndex].info;
        textElements[2].textContent = texts[currentImageIndex].greeting;
        textElements[3].textContent = texts[currentImageIndex].description;
        
        const homeBox = document.querySelector(".home-box");
        if (currentImageIndex === 0) {
            homeBox.style.backgroundColor = "#ffc0cd"; // 사진별 배경 색깔 바꾸기
        } else if (currentImageIndex === 1) {
            homeBox.style.backgroundColor = "#333"; 
        } else if (currentImageIndex === 2) {
            homeBox.style.backgroundColor = "#007aff"; 
        }
        
        // 페이지 번호 업데이트
        const pageNumber = document.querySelector(".separator");
        pageNumber.textContent = `${currentImageIndex + 1}/${images.length}`;
    }

    // 좌우 화살표 버튼 요소들을 찾습니다.
    const leftArrow = document.querySelector(".arrow.left");
    const rightArrow = document.querySelector(".arrow.right");

    // 좌우 화살표 버튼에 클릭 이벤트를 추가합니다.
    leftArrow.addEventListener("click", () => changeImage("left"));
    rightArrow.addEventListener("click", () => changeImage("right"));
    
    // 일정 시간마다 다음 이미지로 넘어가는 타이머를 설정합니다.
    setInterval(() => {
        changeImage("right");
    }, 4000); // 4초마다 이미지 변경
    
    // 페이지 로드 시 첫 번째 이미지를 표시합니다.
    changeImage();
    
    
     
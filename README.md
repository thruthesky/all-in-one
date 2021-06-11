# 플러터 만능앱 개발


- Updated on 2021-06-09

# 참고 사항

- [프로젝트 Git Project 참고](https://github.com/thruthesky/all_in_one/projects/1)
- [프로젝트 Git repo 참고](https://github.com/thruthesky/all_in_one)
- [개발자 가이드 - 처음 스터디에 참여하시는 분들 필독](https://github.com/thruthesky/all_in_one/blob/main/DEVELOPER_GUIDE.md)

## 만능앱 개발자 가이드

- 참고: DEVELOPER_GUIDE.md 문서를 참고합니다.


# 만능앱 개발 스터디 목적 및 인원 모집

- 앱 하나로 모든 것을 다 할 수 있도록 온갖 기능을 다 집어 넣은 만능앱 개발.
- 협업을 통해서 프로젝트를 수행하는 과정을 배우며, 서로가 작업한 부분의 경험과 지식을 세미나를 통해서 공유.
- 스터디 멤버들끼리 본인이 원하는 기능 또는 추가하고 싶은 기능을 만들고, 스터디 발표.
- 스터디 결과물은 오픈 소스로 공개되며, 누구든지 소스 코드 그 자체를 판매해도 되고, 앱으로 등록하여 수익을 만들어도 됩니다.

# 참가 신청

- 본 단톡방에서 "참가신청합니다. 깃허브 아이디: xxxx" 와 같이 적어주시면 됩니다.
- 프로젝트 관리자와 상의 후, 특정 기능을 맡아서 작업을 하면 된다.

# 세미나 일정

- 세미나는 가급적 온라인으로 진행할 예정입니다.

## 1차 세미나

- 날짜: 6월 12일 오후 1시 예정.
- 협업을 위한 Github 사용법.
  - 그냥 간단하게 `git config pull.rebase false` 옵션 사용.
  - main branch 는 보호 되어서 있어, 본인의 branch 에서 commit & push 하고
    - Github 프로젝트 페이지에서 Pull Requeest 후, 관리자에게 Merge 해 달라고 알려 줌.
- 각 멤버가 업무를 맡은 경우, 진행하는 방법 설명.
- 만능앱 개발 가이드라인 제시. 프로젝트에 대한 기본 설명과 설치 및 실행, 그리고 기본 코드 테스트.
  - 프로젝트 클론 및 설치, 실행
  - 문서화
  - 기본 폴더, 파일 구조
  - Scaffold 및 스크린(페이지) 생성.
  - 공유 가능한 위젯 생성
  - 공유 함수 및 글로벌 변수
  - Theme 사용법
- CenterX 백엔드 연동
- 파이어베이스 연동
- 플러터 Integration Test.


## 2차 세미나





# 개발 멤버가 해야 할 일

- 먼저 본 README 문서를 잘 읽어, 본 프로젝트가 어떻게 진행되고 있는지, 어떻게 협업을 해 나가야 하는지를 잘 파악해야 합니다.

- 프로젝트 매니저에게 연락하여 어떤 부분(기능)작업을 할지 먼저 의논합니다.

- 더 상세한 개발 가이드를 보시려면 DEVELOPER_GUIDE 를 참고 해 주세요.

# 만능앱의 주요 기능 들

- 백엔드는 파이어베이스와 도커(Nginx + PHP + MariaDB)
- 모든 메뉴 및 화면에 보이는 글은 다국어(i18n, 언어화). 단, 사용자가 직접 입력하는 글은 제외.
- Integration Test
  - 테스트 작성을 통해서 본인이 작성한 기능을 잘 동작하는지 확인하는 것이 좋습니다.
- 디자인과 로직을 분리.
- 회원 가입 및 관련 기능
  - 카카오 로그인
  - 네이버 로그인
  - 구글 로그인
  - 페이스북 로그인
  - 애플 로그인
  - 전화번호 로그인
  - 본인 실명 인증
    - 휴대폰 PASS번호 로그인
- 프로필 검색, 보기, 추천(좋아요), 별쏘기 및 사용자 프로필 갤러리 공유.
- 친구 기능
  - 친구 추가, 목록, 삭제
  - 친구에게 바로 채팅, 쪽지
- 다른 사용자 블럭 기능
  - 블럭 추가, 목록, 삭제
  - 블럭된 경우,
    - 글/코멘트/사진 보지 않기
    - 쪽지 받기 않기
    - 채팅 받지 않기
    - 기타 모든 이벤트 받지 않기
- 파이어베이스 관련 기능
  - 푸시 알림 설정
  - 파이어베이스 Analystics 와 구글 연결
  - Engage => Admob 연결
- 커뮤니티. 게시판 및 커뮤니티 관련 전체 기능.
  - 게시판 별 검색,
  - 사용자별 글/코멘트 보기
- 푸시알림. 전반적인 푸시 알림 및 프로필 추천, 게시판, 채팅 등에서 밀접한 푸시 알림 설계
  - 푸시 알림 커스터마이징
- 전체 검색시
  - 사용자 이름으로 검색해서 사용자가 맨 위에 보이고 그 아래에 글 이 보일 것.
- 채팅. 1:1, "다대다" 채팅 기능 일체
- 쪽지 기능.
  - 쪽지 기능은 1:1 채팅으로 대체. 즉, 쪽지 기능은 만들지 않고, 1:1 채팅으로 잘 포장해서 사용.
- 관리자와 회원(고객) 상담 기능
  - 1:1 채팅을 잘 포장해서 고객 상담 기능을 활용.
- 맞춤 뉴스 기능
  - IT, 프로그래밍, 코로나, 영화 등 맞춤 뉴스를 볼 수 있도록.
- 날씨
- 미세먼지
- 환율
- 계산기
- 달력
- 달력에서 이벤트 관리
  - 이벤트 반복, 푸시 알림 등 설정. 구글 칼렌더와 비슷한 기능.
- 영어 단어장
- 유튜브 노래 모음, 기타 유튜브 모음 집
- 음악 플레이어 기능.
  - 음악 그룹 만들고
  - 재생곡 위치 스크롤로 변경
  - 음악 파일 이동, 삭제 등.
- 녹음 기능
- 게임. 간단한 게임, 틀린 그림 찾기, 그림 기억하기 등.
- 포인트 기능. 회원 활동에 따라 포인트 증/감.
  - 포인트가 증가하는 양이 경험치가 되며, 경험치 별로 레벨 지정.
  - 포인트는 증/감하지만, 경험치는 감소하지 않음.
  - 포인트 결제. 식당에서 음식 값을 포인트로 결제하는 기능.
    - 협력사에 QR 코드를 부여하고, 회원이 앱에서 QR 스캔에서 포인트로 음식값 결제.
- 건강 기능.
  - BMI 지수
  - 눈 건강. 색상/색명 검사.
  - 치매 검사.
  - 만보기 기능.
  - 간단한 건강 기능들.
- QR 관련기능
  - QR 리더
  - QR 생성. 원하는 웹 페이지로 연결하는 QR 코드. 내 전화번호로 자동 연결하는 QR 코드
- 돋보기 기능.
- 지도
- Admob 광고
- 인앱결제
  - 포인트 구매
  - 특정 메뉴는 정기 구독자만 가능.
- 전화 걸기
  - 가족이나 지인 사진을 찍거나 업로드하고 전화번호를 기록해 놓으면, 메인 화면에서 버튼 한번으로 전화 연결

- 위치 공유
  - 친구, 연인, 가족, 모임그룹 간 위치 공유.
  - 친구 목록에 있는 친구 끼리 위치 공유.
  - 상대방이 허가를 해 주어야 한다.
  - 단, 가족으로 등록된 경우는 예외.
- 메모장
- TODO 해야 할 일 기능
- 그림 그리기.
  - 펜슬로 자유 드로잉을 하는 기능.
- 쇼핑몰 기능
  - 쇼핑몰 기능 전체. 일체.
  - 회원 포인트로 결제 가능.
- 중고 장터 기능
  - 게시판을 변형(확장)하여 회원들 끼리 물건을 사고 파는 기능을하는 게시판 디자인
- 구인/구직 기능
  - 게시판을 변형하여, 구인 구직에 꼭 맞는 게시판 디자인
- 부동산 임대/매매

  - 게시판을 변경하여, 글 등록 양식을 부동산 임대/매매 형식에 맞추고, 검색도 용이하게 한다.
  - 위치 별 지도를 보기 버튼을 두고, 네비 기능 제공

- 기타, 언제든지 생각나는 기능이 있으면 추가.


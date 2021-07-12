
# 오픈마켓 프로젝트 학습

[구현 완성된 코드가 있는 Branch](https://github.com/alwaysblu/ios-open-market/tree/step3)

### 협업 규칙 - JM, Kio
- [팀그라운드룰](https://github.com/alwaysblu/ios-open-market/blob/main/Docs/%ED%8C%80%EA%B7%B8%EB%9D%BC%EC%9A%B4%EB%93%9C%EB%A3%B0.md)

<br>



## :pushpin: 핵심 키워드

* 파싱할 JSON 모델 설계
* CodingKeys 프로토콜
* 네트워크에 의존성 없는 JSON 모델 유닛테스트
* Alert Controller
* 로컬 캐시
* Rest API
* URLSession을 이용한 multipart형식 네트워킹 구현

<br>

## :pushpin: Commit Convention

```swift
# <타입>: <제목>

##### 제목은 최대 우측 '|' 까지만 입력 ######## -> |

# 본문은 위에 작성
##########본문은 우측 '|' 까지만 입력 ######################## -> |

# 꼬릿말은 아래에 작성: Ex #issue number

# --- COMMIT END ---
# <타입> 리스트
#   feat    : 기능 (새로운 기능)
#   fix     : 버그 (버그 수정)
#   refactor: 리팩토링
#   style   : 스타일 (코드 형식, 세미콜론 추가: 비즈니스 로직에 변경 없음)
#   docs    : 문서 (문서 추가, 수정, 삭제)
#   test    : 테스트 (테스트 코드 추가, 수정, 삭제: 비즈니스 로직에 변경 없음)
#   chore   : 기타 변경사항 (빌드 스크립트 수정 등)
# ------------------
#     제목 첫 글자를 대문자로
#     제목은 명령문으로
#     제목 끝에 마침표(.) 금지
#     제목과 본문을 한 줄 띄워 분리하기
#     본문은 "어떻게" 보다 "무엇을", "왜"를 설명한다.
#     본문에 여러줄의 메시지를 작성할 땐 "-"로 구분
# ------------------
```

<br>

## :pushpin: Pull Request

* [Step 1](https://github.com/yagom-academy/ios-open-market/pull/19)
* [Step 2](https://github.com/yagom-academy/ios-open-market/pull/30)
* [Step 3](https://github.com/yagom-academy/ios-open-market/pull/32)



<br>

## :pushpin: 트러블 슈팅

   

<br>

## :pushpin: 구현 사항

### < Pagination >

<img src="https://user-images.githubusercontent.com/75533266/120496941-f5ea2280-c3f8-11eb-8204-2386c57e292e.gif" width="30%">


`List Pagination`

---

<img src="https://user-images.githubusercontent.com/75533266/120496956-fa164000-c3f8-11eb-9bb9-691e0d2739f7.gif" width="30%">


`Layout 변경`

---

<img src="https://user-images.githubusercontent.com/75533266/120497009-04383e80-c3f9-11eb-9804-bebc58911a81.gif" width="30%">

`Grid Pagination`

---

### < 상품 등록 >

<img src="https://user-images.githubusercontent.com/75533266/120497072-11552d80-c3f9-11eb-89cd-af9eeed60306.gif" width="30%">


`이미지 선택`

---

<img src="https://user-images.githubusercontent.com/75533266/120497104-1914d200-c3f9-11eb-92fb-ea421ef5375c.gif" width="30%">


`상품 등록을 위한 상세 정보 기입`

---

<img src="https://user-images.githubusercontent.com/75533266/120497119-1c0fc280-c3f9-11eb-942e-6bff4ee7cbb4.gif" width="30%">


`상품 등록 후 등록 확인`


---

### < 상품 수정 >

<img src="https://user-images.githubusercontent.com/75533266/120497164-23cf6700-c3f9-11eb-9091-01e812e6d313.gif" width="30%">


`상품 수정 버튼 클릭`

---

<img src="https://user-images.githubusercontent.com/75533266/120497183-2762ee00-c3f9-11eb-9fb8-8ef9581c6646.gif" width="30%">


`상품 수정에서 이미지 수정`

---

<img src="https://user-images.githubusercontent.com/75533266/120497198-2af67500-c3f9-11eb-8f5a-bd19d9bb0b41.gif" width="30%">


`상품 수정 버튼 클릭 후 상품 수정 확인`



---

### < 상품 삭제 >


<img src="https://user-images.githubusercontent.com/75533266/125275270-c8728c00-e349-11eb-87da-1508cc374ede.gif" width="30%">

`상품 삭제를 위한 클릭`

---

<img src="https://user-images.githubusercontent.com/75533266/125275319-d7f1d500-e349-11eb-9f4c-84c5d16a1c4d.gif" width="30%">

`삭제 버튼 `

---

<img src="https://user-images.githubusercontent.com/75533266/125275332-da542f00-e349-11eb-90cf-c730fa1cb578.gif" width="30%">

`틀린 비밀번호 입력 후 확인 버튼 클릭`

---

<img src="https://user-images.githubusercontent.com/75533266/125275338-db855c00-e349-11eb-97a8-587ede6b37f1.gif" width="30%">

`알맞는 비밀번호 입력 후 확인 버튼 클릭`


---

<img src="https://user-images.githubusercontent.com/75533266/125275345-dd4f1f80-e349-11eb-9669-fd171326b89d.gif" width="30%">

`상품 삭제 확인`

---










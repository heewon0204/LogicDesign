# Lab 10

## 실습 내용

### **적외선 리모콘으로 데이터 전달**

#### **Leader Code** 
@ 프레임의 모드 선택
@ 리모콘 누르자 마자 시작되는 부분이다.
@ 약 9ms정도 0에 있다가 1로 상승한다. (0 - 8999까지)
@ 인터벌 1개는 9ms + 4.5ms로 구성된다.

#### **Custom Code**
@ 16bit로 구성이 되어있다.
@ 이 중 절반은 원래 값의 반전된 형태다.
@ 특정한 회사를 나타내는 부분이다.

#### **Data Code**
@ custom code와 마찬가지로 16bit로 구성이 되어있다.
@ 이 중 절반은 원래 값의 반전된 형태다.
@ 송신 데이터 부분이다.
@ 데이터의 확인을 위해서 보수 신호 역시 보낸다.

저 끝에 빨간줄이 이어지다가 초록색 부분이 보이는 지점은 데이터

## 결과
### **Top Waveform 검증**
 
 

     
### **FPGA 동작 사진**
 


<!--stackedit_data:
eyJoaXN0b3J5IjpbOTY5MzE4ODI1LDE4MzUzNTA4NDAsLTE4ND
YxNzk4NjUsLTIwODg3NDY2MTIsLTMwMzA1MjM4MV19
-->
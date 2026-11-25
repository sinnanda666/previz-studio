# PREVIZ STUDIO V0.10

로컬: 터미널에서 이 폴더로 이동 후 `python3 -m http.server 8000` 실행, 브라우저에서 localhost:8000 접속.

Supabase: 프로젝트 생성 → SQL Editor에서 schema.sql 1회 실행 → Authentication Users에서 이메일 사용자 생성 및 확인 → cloud-config.js에 Project URL과 publishable 또는 anon 키 입력. service_role/secret 키 금지. 앱의 클라우드 버튼에서 로그인 후 저장/불러오기. 저장은 새 스냅샷을 생성하며 세션은 메모리에만 유지. 기존 JSON 저장 범위와 동일하며 큰 GLB는 별도 Storage 연동 권장.

GitHub: 새 저장소 생성 후 이 폴더의 파일 업로드. Settings → Pages → Deploy from a branch → main / root. 또는 로컬 git init, git add ., git commit -m "V0.10", git remote add origin <저장소 URL>, git push -u origin main (필요시 git branch -M main). 공개 저장소에는 비밀 키나 개인 프로젝트 JSON을 올리지 말 것.

이번 버전은 브라우저/WebGL 및 실제 Supabase 연결 테스트 전입니다.

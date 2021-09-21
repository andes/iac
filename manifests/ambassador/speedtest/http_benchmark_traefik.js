import http from 'k6/http';

export let options = {
    vus: 60,
    duration: '30s',
    insecureSkipTLSVerify: true,
}
export default function() {
    http.get('https://test-server.192-168-68-1.nip.io:30443/')
}

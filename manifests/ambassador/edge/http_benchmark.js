import http from 'k6/http';

export default function() {
    http.get('https://192.168.68.1:30692/test/')
}

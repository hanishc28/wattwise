$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://127.0.0.1:8080/")
$listener.Start()
Write-Host "WattWise HTTP Server running at http://127.0.0.1:8080/"
try {
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $req = $context.Request
        $res = $context.Response
        $localPath = $req.Url.LocalPath.TrimStart('/')
        if ([string]::IsNullOrEmpty($localPath)) { $localPath = "index.html" }
        $file = Join-Path "C:\Users\Admin\wattwise" $localPath
        if (Test-Path $file -PathType Leaf) {
            $bytes = [System.IO.File]::ReadAllBytes($file)
            if ($file.EndsWith(".html")) { $res.ContentType = "text/html; charset=utf-8" }
            elseif ($file.EndsWith(".css")) { $res.ContentType = "text/css; charset=utf-8" }
            elseif ($file.EndsWith(".js")) { $res.ContentType = "application/javascript; charset=utf-8" }
            elseif ($file.EndsWith(".svg")) { $res.ContentType = "image/svg+xml" }
            elseif ($file.EndsWith(".png")) { $res.ContentType = "image/png" }
            $res.ContentLength64 = $bytes.Length
            $res.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $res.StatusCode = 404
        }
        $res.Close()
    }
} finally {
    $listener.Stop()
}

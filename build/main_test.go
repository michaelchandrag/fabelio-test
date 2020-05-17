package main

import (
   "encoding/json"
   "net/http"
   "net/http/httptest"
   "testing"
   "io"
   "bytes"

   "github.com/stretchr/testify/assert"

   router "github.com/michaelchandrag/fabelio-test/module/router"
   model "github.com/michaelchandrag/fabelio-test/module/model"
   database "github.com/michaelchandrag/fabelio-test/database"
)
func performRequest(r http.Handler, method, path string, payload io.Reader) *httptest.ResponseRecorder {
   req, _ := http.NewRequest(method, path, payload)
   w := httptest.NewRecorder()
   r.ServeHTTP(w, req)
   return w
}

func TestFetchDataFromFabelio(t *testing.T) {

   errDb := database.Connect()
   type request struct {
      Link     string      `json:"link"`
   }

   link := "https://fabelio.com/ip/meja-makan-cessi-white-new.html"
   payload := request{
      Link: link,
   }

   payloadJson, _ := json.Marshal(&payload)
   b := bytes.NewBuffer(payloadJson)

   router := router.SetupRouter()
   w := performRequest(router, "POST", "/fetch_data_from_fabelio", b)
   assert.Equal(t, http.StatusOK, w.Code)

   type response struct {
      Data        model.Detail         `json:"detail"`
      ID          int                  `json:"id"`
      Link        string               `json:"string"`
      ProductID   string               `json:"product_id"`
   }

   var result response
   err := json.Unmarshal([]byte(w.Body.String()), &result)

   assert.Nil(t, errDb)
   assert.Nil(t, err)
   assert.NotNil(t, result.Data.ProductID)
   assert.NotNil(t, result.ID)
   assert.NotEqual(t, result.Data.ID, 0)
}
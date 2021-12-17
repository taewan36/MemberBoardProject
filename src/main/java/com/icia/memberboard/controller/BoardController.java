package com.icia.memberboard.controller; // 패키지에서 빨간줄 뜨는건 지금 파일 위치들이 바껴서 그런건데 하는거 잘봐요 넵
// 패키지는 기본적으로 com.icia.memberboard. 이렇게 시작이 되야 하는거예요. 지금 프로젝트 구조에서는 알겠습니다
// 지금은 일단 폴더 세팅하고 파일들 옮기고 그러면 경로 못찾는다고 오류가 많이 나있을 텐데 대부분 이렇게 마우스 올려서 수정해주면 대부분 될거니 그렇게 하고 


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.icia.memberboard.dto.BoardDTO;
import com.icia.memberboard.dto.PageDTO;
import com.icia.memberboard.service.BoardService;



// /board/* 주소를 모두 처리
@Controller
@RequestMapping(value="/board/*") // /board/* 로 요청하는 주소는 다 받겠다
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	@RequestMapping(value="save", method=RequestMethod.GET)
	public String saveForm() {
		// views/board 폴더에 있는 save.jsp를 출력 
		return "board/save";
	}
	
	@RequestMapping(value="save", method=RequestMethod.POST)
	public String save(@ModelAttribute BoardDTO board) {
		bs.save(board);
		return "redirect:/board/findAll";
	}
	@RequestMapping(value="savefile", method=RequestMethod.POST)
	public String saveFile(@ModelAttribute BoardDTO board) throws IllegalStateException, IOException {
		bs.saveFile(board);
		return "redirect:/board/paging";
	}
	
	@RequestMapping(value="findAll", method=RequestMethod.GET)
	public String findAll(Model model) {
		List<BoardDTO> boardList = bs.findAll();
		model.addAttribute("boardList", boardList);
		return "board/findAll";
	}
	
	@RequestMapping(value="detail", method=RequestMethod.GET)
	public String findById(@RequestParam("b_number") long b_number, Model model,  @RequestParam(value="page", required=false, defaultValue="1") int page) {
		bs.hits(b_number);
		BoardDTO board = bs.findById(b_number);
		model.addAttribute("board", board);
		model.addAttribute("board", board);
		return "board/detail";
	}
	
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public String delete(@RequestParam("b_number") long b_number) {
		bs.delete(b_number);
		return "redirect:/board/findAll";
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET)
	public String updateForm(@RequestParam("b_number") long b_number, Model model,  @RequestParam(value="page", required=false, defaultValue="1") int page) {
		BoardDTO board = bs.findById(b_number);
		model.addAttribute("board", board);
		model.addAttribute("page", page);
		return "board/update";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(@ModelAttribute BoardDTO board,@RequestParam(value="page", required=false, defaultValue="1") int page) {
		bs.update(board);
		return "redirect:/board/detail?b_number="+board.getB_number() + "&page=" + page;
	}
	
	@RequestMapping(value="paging", method=RequestMethod.GET)
	//value: 파라미터이름, required: 필수여부, defaultValue: 기본값(page 요청값이 없으면 1로 세팅)
	public String paging(@RequestParam(value="page", required=false, defaultValue="1")int page, Model model) {
		PageDTO paging = bs.paging(page);
		List<BoardDTO> boardList = bs.pagingList(page);
		model.addAttribute("boardList", boardList);
		model.addAttribute("paging", paging);
		return "board/findAll";
	}
	
	@RequestMapping(value="search", method=RequestMethod.GET)
	public String search(@RequestParam("searchtype") String searchtype, @RequestParam("keyword") String keyword, Model model) {
		List<BoardDTO> boardList = bs.search(searchtype, keyword);
		model.addAttribute("boardList", boardList);
		return "board/findAll";
}
}







